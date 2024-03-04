<?php

namespace App\Http\Controllers;

use Conekta\Order;
use Auth;
use Illuminate\Support\Facades\Session;
use App\User;
use App\Domicilio;
use App\Pedido;
use App\Producto;
use App\PFProducto;
use Illuminate\Http\Request;
use Exception;
use Illuminate\Http\Client\Response;
use Illuminate\Support\Facades\Http;
use GuzzleHttp\Client;
use App\PFCategoriaPepes;
use App\PFSubcategoriaPepes;
use App\PFProductoPepes;
use App\PFProductoGaleriaPepes;
use App\PFProductoPresentacionPepes;
use Omnipay\Omnipay;

class PayPalController extends Controller
{
    private $gateway;
    public function __construct() {
        $this->middleware('auth');
        $this->gateway = Omnipay::create('PayPal_Rest');
        $this->gateway->setClientId('AUt5ZknCfLb_VZXRc2uKWeo4po11iWEW_J6n2ZZrrIY9Z-GuvqszEWBEx3l3m7e9k0Ogp4c0vsnoscps');
        $this->gateway->setSecret('EHeTy6pXO3b59le1o1GLHrtA99wCuWk6EJYMCLOZoAVps6zwkkSThtYSyX-e7RXXSewD05nfhVuYu9GR');
        $this->gateway->setTestMode(true);
    }

    public function procesarPagoPayPal(Request $request) {
        $totalCompra = session('totalCompra');
        session(['totalCompra' => $request->amount]);
        try {
            $response = $this->gateway->purchase(array(
                'amount' => $request->amount,
                'currency' => 'MXN',
                'returnUrl' => url('paypalSuccess'),
                'cancelUrl' => url('paypalError'),
            ))->send();

            if($response->isRedirect()) {
                $response->redirect();
            } else {
                return $response->getMessage();
            }

        }catch(\Throwable $th) {
            return $th->getMessage();
        }
    }

    public function paypalSuccess(Request $request) {

        // dd($request);
        // dd($request);
        $userId = Auth::id();
        $usuario = User::find($userId);
        $domicilio = Domicilio::where('user',$userId )->get()->first();
        $cantidadT = session('cantidad_prods');
        // dd($cantidadT);
        $totalCompra = session('totalCompra');


        // $responseData = json_decode($response->getBody(), true);
        $Carrito = session('carrito');
        // dd($Carrito);
        $envio = session('envio');

        // dd($usuario, $domicilio, $cantidadT, $Carrito, $envio, $totalCompra);

        $Pedido = new Pedido;
        // $Pedido->uid= $responseData['id'];
        $Pedido->uid= $request->PayerID;
        $Pedido->estatus= 1;
        $Pedido->domicilio= $domicilio->id;
        $Pedido->cantidad= $cantidadT;
        $Pedido->importe= $totalCompra;
        $Pedido->iva= 0;
        $Pedido->total= $totalCompra;
        $Pedido->envio= $envio;
        $Pedido->usuario= $userId;
        $Pedido->data= json_encode($Carrito);
        foreach($Carrito as $c) {
            $producto =  PFProductoPepes::find($c['id']);
            $producto->presentacion = $c['presentacion'];
            $producto->existencias = $producto->existencias - $c['existencias'];
            $producto->save();
        }
        $Pedido->save();
        // dd($Pedido);
        session()->forget('carrito');
        session()->forget('envio');

        // return response()->json(['success' => true, 'mensaje' => $responseData]);
        return redirect()->route('pedidos');
    }

    public function paypalError(Request $request) {
        return redirect()->back();
    }

}
