@extends('layouts.front')

@section('title', 'Inicio')
{{-- CABECERAS DE ESTILOS --}}
    @section('cssExtras')
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    {{-- <script type="text/javascript" src="https://pay.conekta.com/v1.0/js/conekta-checkout.min.js"></script> --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.23/dist/sweetalert2.min.css">
    @endsection
{{-- CABECERAS DE ESTILOS --}}

{{-- ESTILOS CSS PERSONALIZADOS --}}
    @section('styleExtras')
    <style>
        .card_ini{
            top:-100px;
        }
        .cont_map iframe{
            width: 100% !important;
        }

        @media only screen and (max-width: 768px){ 
            .card_ini{
            top:20px;
        }
        .cont_cards_ini{
            top: 1px !important;
        }
        }

        @media only screen and (max-width: 590px){  
            .tutulo_inicio{
                font-size: 35px !important;
            }
            .desc_inicio{
                font-size: 12px !important;
            }
            .cont_clientes{
                margin-top: 300px !important;
            }

        }
    </style>


    @endsection
{{-- ESTILOS CSS PERSONALIZADOS --}}

{{-- CONTENIDO DE LA PAGINA --}}
    @section('content')

    
    


    <div class="col-12 text-center d-flex justify-content-center align-items-center flex-column">
        <p class="mt-5" style="font-size: 2.5rem; font-family: 'Courier New', Courier, monospace; color: #909986;">Proceso de pago</p>
    </div>

    @if($car == 1)

    <div class="col-12 pb-5 d-flex justify-content-center align-items-center " style="">
        
                
                <div class="col-4 card p-3 d-flex justify-content-between" style=" height: 450px; border-radius: 26px; border:none; box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.11);">
                    <div class="col-12 " style="height: 50px;">
                        <h5>Resumen de compra</h5>
                    </div>
                    <div class="col-12 table p-3" style="height: 200px; background: rgb(233, 233, 233); overflow: auto; border-radius: 16px;">
                        @php
                            $total_prod = 0;
                            $cantidad_prods = 0;
                        @endphp
                        @foreach($productos as $p)
                        <div id="list_prod_{{$p->id}}"  class="col-12 my-0 d-flex align-items-center justify-content-between">
                            <div class="col-5 my-0"><h6 class="my-0">{{$p->nombre}}  - {{ $p->presentacion ?? '' }} </h6></div>
                            <div class="col-2 my-0 text-end"><h6 id="txt_cant_{{$p->id}}" class="my-0">x {{$p->catidad_total}}: </h6></div>
                            @php
                                $precio_cant = $p->precio * $p->catidad_total;
                                $total_prod += $precio_cant;
                                $cantidad_prods += $p->catidad_total;
                            @endphp
                            <div class="col-5 my-0 text-end" style="" class="text-end"><h6 id="cat_total_{{$p->id}}" class="my-0" data-precio-u="{{$p->precio}}" data-precio-cant="{{$precio_cant}}" data-cant_prds_u="{{$cantidad_prods}}" >${{$precio_cant}}</h6></div>
                        </div>
                        @endforeach

                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <h5 style="font-weight: ;">Envio</h5>
                        <h5 id="cost-env" style="font-weight: ;">${{$envio}}</h5>
                    </div>
                    @php
                        $iva = $total_prod * 0.16;
                        $formattedIVA = number_format($iva, 2, '.', '');
                        $semitotal = $total_prod + $formattedIVA;
                        $precio_final_p = $semitotal + $envio;
                        $formattedTotalPrice = number_format($precio_final_p, 2, '.', '');
                    @endphp
                    <div class="col-12 d-flex justify-content-between">
                        <h5 style="font-weight: bold;">Subtotal</h5>
                        <h5 id="total_compra" data-total-c="{{$total_prod}}" style="font-weight: bold;">${{$total_prod}}</h5>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <h5 style="font-weight: bold;">IVA (16%)</h5>
                        <h5 id="" data-total-iva="{{$formattedIVA}}" style="font-weight: bold;">${{$formattedIVA}}</h5>
                    </div>
                    <div class="col-12 d-flex justify-content-between">
                        <h5 style="font-weight: bold;">Total</h5>
                        <h5 id="" data-total-c="{{$formattedTotalPrice}}" style="font-weight: bold;">${{$formattedTotalPrice}}</h5>
                    </div>
                    <div class="col-12" style="height: 50px;">
                    
                        <input id="token_card" type="text" name="token_card" value="" hidden>
                        <input id="cant_prods_t" type="text" name="cant_prods" value="{{$cantidad_prods}}" hidden>
                        <input id="total_price" type="text" name="total_price"  value="{{$precio_final_p}}" hidden>
                        <input id="user_id" type="text" name="user_id"  value="{{$user->id}}" hidden>
                        {{-- <button type="submit" id="btn-comprar" class="col-12 btn btn-primary d-flex flex-row justify-content-center align-items-center" style="border-radius: 26px;" ><p class="fa-bounce py-0 my-auto">Comprar</p> <i class="fa-solid fa-credit-card fa-bounce ms-3"></i></button> --}}
                    </div>
                </div>
                <div class="col-8 card py-2 px-2 mx-2" style="height: 550px; overflow: auto; border-radius: 26px; border:; background: ; ">
                    <div class="col-12 text-center mt-2 mb-0">
                        <h5 style="color: " class="py-0">Ingresa los datos de tu tarjeta</h5>
                    </div>
                    <div class="col">
                      
                        {{-- <div id="paypal-button-container"></div> --}}
                        <div class="panel">
                
                            <div class="panel-body">
                                <form action="{{ route('procesarPagoPayPal') }}" method="POST">
                                    @csrf
                                    <input type="hidden" name="cant" value="{{ $cantidad_prods }}">
                                    <input type="hidden" name="amount" value="{{ $formattedTotalPrice }}">
                                    <button type="submit">
                                        Pagar con PayPal
                                    </button>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            
            {{-- {{ dd($total_prod, $envio, $iva, $semitotal, $precio_final_p) }} --}}
    </div>
    {{-- {{ dd($precio_final_p) }} --}}
    @else

    <div class="container py-3 my-5" style="background: rgb(237, 237, 237); border-radius: 16px;">
        <div class="col-12 text-center d-flex justify-content-center align-items-center flex-column">            
            <p class="mt-5" style="font-size: 4.5rem; font-family: 'Courier New', Courier, monospace; color: black;"><i class="fa-solid fa-cart-shopping fa-bounce"></i></p>
            <p class="mb-5" style="font-size: 4.5rem; font-family: 'Courier New', Courier, monospace; color: black;">Carrito vacio</p>
        </div>
    </div>

@endif

@endsection

@section('jqueryExtra')

@endsection
