<?php

namespace App\Http\Controllers;

use Conekta\Order;
use Auth;
use App\User;
use App\Domicilio;
use App\Pedido;
use App\Producto;
use App\PFProducto;
use Illuminate\Http\Request;
use Illuminate\Http\Client\Response;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;
use App\PFCategoriaPepes;
use App\PFSubcategoriaPepes;
use App\PFProductoPepes;
use App\PFProductoGaleriaPepes;
use App\PFProductoPresentacionPepes;

class PayPalController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }


    public function procesarPagoPayPal(Request $request){

        $userId = Auth::id();
        // $userId = $request->user_id;
        $usuario = User::find($userId);
        $domicilio = Domicilio::where('user',$userId )->get()->first();

        $totalPrice = $request->total_price;

        $formattedTotalPrice = number_format($totalPrice, 2, '', '');

        // Sustituya estas variables por sus valores reales
        $clientId = config('services.paypal.client_id');
        $secret = config('services.paypal.secret_key');
        $grantType = 'client_credentials';
        $uri = 'https://api.paypal.com/v1/oauth2/token';
        $uriOrder = 'https://api.paypal.com/v2/checkout/orders';

        // Crear una nueva instancia de GuzzleHttp\Client
        $client = new Client();  // Make sure to use the full namespace

        // Prepare the request
        $responseToken = $client->post($uri, [
            'headers' => [
                'Accept' => 'application/json',
                'Accept-Language' => 'es-MX',
                'Content-type' => 'application/json',
            ],
            'body' => http_build_query([
                'grant_type' => $grantType,
            ]),
            'auth' => [$clientId, $secret, 'basic'],
        ]);

        // Directly access the responseToken object (no need for `send()`)
        $data = json_decode($responseToken->getBody(), true);
        $accessToken = $data['access_token'];

        // Crear una nueva orden
        $responseOrder = $client->post($uriOrder, [
            'headers' => [
                'Content-Type' => 'application/json',
                'Authorization' => 'Bearer ' . $accessToken,
            ],
            'json' => [
                'intent' => 'CAPTURE',
                'purchase_units' => [
                    [
                        'amount' => [
                            'currency_code' => 'MXN', // Ajusta a tu moneda preferida
                            'value' => $totalPrice,
                        ],
                    ],
                ],
            ],
        ]);

        // Decodificar la respuesta JSON de la orden
        $orderData = json_decode($responseOrder->getBody(), true);
        $paypalOrderId = $orderData['id'];

        // dd($paypalOrderId);

        // Formatear el número a formato de moneda con separadores de miles y decimales
        $formattedTotalPrice = number_format($totalPrice, 2, '', '');
        $Carrito = session('carrito');
        $envio = session('envio');
        $Pedido = new Pedido;
        $Pedido->uid= $paypalOrderId;
        $Pedido->estatus= 1;
        $Pedido->domicilio= $domicilio->id;
        $Pedido->cantidad= $request->cant_prods;
        $Pedido->importe= $request->total_price;
        $Pedido->iva= 0;
        $Pedido->total= $request->total_price;
        $Pedido->envio= $envio;
        $Pedido->usuario= $userId;
        $Pedido->data= json_encode($Carrito);
        foreach($Carrito  as $c){
            $producto =  PFProductoPepes::find($c['id']);
            $producto->existencias = $producto->existencias - $c['existencias'];
            $producto->save();
        }
        $Pedido->save();
        session()->forget('carrito');
        session()->forget('envio');
    
        // return response()->json(['success' => true, 'mensaje' => $responseData]);
        return redirect()->route('pedidos');
        
        dd($responseData);

    // Procesar la respuesta de Conekta y redirigir o mostrar resultados

    }  
}
