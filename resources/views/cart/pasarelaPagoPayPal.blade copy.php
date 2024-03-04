@extends('layouts.front')

@section('title', 'Inicio')
{{-- CABECERAS DE ESTILOS --}}
    @section('cssExtras')
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
        <form id="payment-form" action="{{route('procesarPagoPayPal')}}" method="POST" class="container d-flex flex-row">
                <div class="col-8 card py-2 px-2 mx-2" style="height: 550px; overflow: auto; border-radius: 26px; border:; background: ; ">
                    <div class="col-12 text-center mt-2 mb-0">
                        <h5 style="color: " class="py-0">Ingresa los datos de tu tarjeta</h5>
                    </div>
                    <div class="col">
                      
                        

                        <div id="paypal-button-container"></div>

                    </div>
                </div>
                <div class="col-4 card p-3 d-flex justify-content-between" style=" height: 350px; border-radius: 26px; border:none; box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.11);">
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
                        <h6 style="font-weight: ;">Envio</h6>
                        <h6 id="cost-env" style="font-weight: ;">{{$envio}}</h6>
                    </div>
                    @php
                        $precio_final_p = $total_prod + $envio;
                    @endphp
                    <div class="col-12 d-flex justify-content-between">
                        <h5 style="font-weight: bold;">Total</h5>
                        <h5 id="total_compra" data-total-c="{{$total_prod}}" style="font-weight: bold;">${{$precio_final_p}}</h5>
                    </div>
                    <div class="col-12" style="height: 50px;">
                        @csrf
                        <input id="token_card" type="text" name="token_card" value="" hidden>
                        <input id="cant_prods_t" type="text" name="cant_prods" value="{{$cantidad_prods}}" hidden>
                        <input id="total_price" type="text" name="total_price"  value="{{$precio_final_p}}" hidden>
                        <input id="user_id" type="text" name="user_id"  value="{{$user->id}}" hidden>
                        {{-- <button type="submit" id="btn-comprar" class="col-12 btn btn-primary d-flex flex-row justify-content-center align-items-center" style="border-radius: 26px;" ><p class="fa-bounce py-0 my-auto">Comprar</p> <i class="fa-solid fa-credit-card fa-bounce ms-3"></i></button> --}}
                    </div>
                </div>
            </form>
            <input type="hidden" id="totalP" value="{{$precio_final_p}}">

    </div>

    @else

    <div class="container py-3 my-5" style="background: rgb(237, 237, 237); border-radius: 16px;">
        <div class="col-12 text-center d-flex justify-content-center align-items-center flex-column">
            
            <p class="mt-5" style="font-size: 4.5rem; font-family: 'Courier New', Courier, monospace; color: black;"><i class="fa-solid fa-cart-shopping fa-bounce"></i></p>
            <p class="mb-5" style="font-size: 4.5rem; font-family: 'Courier New', Courier, monospace; color: black;">Carrito vacio</p>
        </div>
    </div>

@endif

    @endsection
{{-- CONTENIDO DE LA PAGINA --}}

{{-- JAVASCRIPT EXTRAS --}}
    @section('jqueryExtra')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.23/dist/sweetalert2.all.min.js"></script>
    
    <script src="https://www.paypal.com/sdk/js?client-id=AZLJzCzJ5BF6tbrLH-Gn5HsLY5YF12M8hAToi8FY3NbVyGnFfnL5T6Rdu9tHqv0OG33BCybIUpNVvcm1&components=buttons&currency=MXN"></script>
    <script>

        const total = parseFloat(document.getElementById('totalP').value).toFixed(2);
        console.log(total);
    
        paypal.Buttons({

            style:{
                color: 'blue',
                shape: 'pill',
                label: 'pay'
            },

            createOrder: function(data, actions) {

                Swal.fire({
                    title: 'Procesando pago',
                    html: 'Espere por favor...', 
                    timer: 5000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading()
                    }
                })

                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: total,
                            currency: 'MXN'
                        }
                    }]
                });
            },

            onApprove: function(data, actions) {
                // Obtener los valores necesarios
                var cant_prods = $('#cant_prods_t').val();
                var total_price = $('#total_price').val();
                var user_id = $('#user_id').val();
                var csrf_token = $('meta[name="csrf-token"]').attr('content');

                // Crear un formulario oculto
                var form = document.createElement("form");
                form.method = "POST";
                form.action = "{{ route('procesarPagoPayPal') }}";

                // Agregar los campos necesarios al formulario
                var cant_prods_input = document.createElement("input");
                cant_prods_input.type = "hidden";
                cant_prods_input.name = "cant_prods";
                cant_prods_input.value = cant_prods;
                form.appendChild(cant_prods_input);

                var total_price_input = document.createElement("input");
                total_price_input.type = "hidden";
                total_price_input.name = "total_price";
                total_price_input.value = total_price;
                form.appendChild(total_price_input);

                var user_id_input = document.createElement("input");
                user_id_input.type = "hidden";
                user_id_input.name = "user_id";
                user_id_input.value = user_id;
                form.appendChild(user_id_input);

                var csrf_token_input = document.createElement("input");
                csrf_token_input.type = "hidden";
                csrf_token_input.name = "_token";
                csrf_token_input.value = csrf_token;
                form.appendChild(csrf_token_input);

                // Adjuntar el formulario al cuerpo del documento
                document.body.appendChild(form);

                // Enviar el formulario
                form.submit();

                // Mostrar mensaje de éxito antes de la redirección
                Swal.fire({
                    icon: 'success',
                    title: 'Pago exitoso',
                    html: 'Espere un momento...',
                    timer: 3000,
                    timerProgressBar: true,
                    didOpen: () => {
                        Swal.showLoading()
                    }
                });
            },

    
            // onApprove: function(data, actions) {
            //     actions.order.capture().then(function(detalles){
            //         var cant_prod = $('#cant_prods_t').val();
            //         var total_price = $('#total_price').val();

            //         var csrf = $('meta[name="csrf-token"]').attr('content');
            //         var URL = "{{route('procesarPagoPayPal')}}";
            //         $.ajax({
                        
            //             method: "POST",
            //             url: "{{ route('procesarPagoPayPal') }}",
            //             data: {
            //                 "_method": 'post',
            //                 "_token": csrf,
            //                 cant_prods: cant_prod,
            //                 total_price: total_price
            //             }
            //         })
            //         .done(function(msg) {
            //             console.log(msg);
                        
            //             if (msg.success) {
            //                 Swal.fire({
            //                     icon: 'success',
            //                     title: 'Pago exitoso',
            //                     html: 'Espere un momento será redirigido a otra ventana',
            //                     timer: 4000,
            //                     timerProgressBar: true,
            //                     didOpen: () => {
            //                         Swal.showLoading()
            //                     }
            //                 })

            //                 setTimeout(function(){
            //                     window.location.href ="{{route('pedidos')}}";
            //                 }, 3000);
            //             }else{        
            //                 Swal.fire({
            //                 icon: 'error',
            //                 title: 'Oups error en el pago',
            //                 text: 'Revise los datos de la tarjeta y vuelva a intentarlo',
            //                 showConfirmButton: false,
            //                 })
            //             }
            //         }).fail(function(jqXHR, textStatus, errorThrown) {
            //             // Código para manejar la falla de la solicitud AJAX
            //             console.log('Error en la solicitud AJAX:', textStatus, errorThrown);
            //             Swal.fire({
            //                 icon: 'error',
            //                 title: 'Error en la solicitud',
            //                 text: 'Hubo un problema al procesar la solicitud. Intente nuevamente más tarde.',
            //                 showConfirmButton: false,
            //             });
            //             // Recargar la página después de 4 segundos (4000 milisegundos)
            //             setTimeout(function() {
            //                 location.reload(); // Recargar la página
            //             },  1000);
            //         });
            //         // console.log(detalles);
            //         // window.location.href="{{route('pedidos')}}";
            //     });
            // },
    
            onCancel: function(data) {
                alert("Pago cancelado");
                console.log(data);
            }
        }).render('#paypal-button-container');
    </script>

    @endsection
{{-- JAVASCRIPT EXTRAS --}}


{{-- Swal.fire({
    title: 'Procesando pago',
    html: 'Espere por favor...', 
    timer: 30000,
    timerProgressBar: true,
    didOpen: () => {
        Swal.showLoading()
    }
})

var cant_prod = $('#cant_prods_t').val();
var total_price = $('#total_price').val();

var csrf = $('meta[name="csrf-token"]').attr('content');
var URL = "{{route('procesarPagoPayPal')}}";
$.ajax({
    
    method: "POST",
    url: URL,
    data: {
        "_method": 'post',
        "_token": csrf,
        cant_prods: cant_prod,
        total_price: total_price,
        token_card: '12345'
    }
})
.done(function(msg) {
    console.log(msg);
    
    if (msg.success) {
        
        Swal.fire({
            icon: 'success',
            title: 'Pago exitoso',
            html: 'Espere un momento será redirigido a otra ventana',
            timer: 4000,
            timerProgressBar: true,
            didOpen: () => {
                Swal.showLoading()
            }
        })

        setTimeout(function(){
            window.location.href ="{{route('pedidos')}}";
        }, 3000);
    }else{        
        Swal.fire({
        icon: 'error',
        title: 'Oups error en el pago',
        text: 'Revise los datos de la tarjeta y vuelva a intentarlo',
        showConfirmButton: false,
        })
    }
}).fail(function(jqXHR, textStatus, errorThrown) {
    // Código para manejar la falla de la solicitud AJAX
    console.log('Error en la solicitud AJAX:', textStatus, errorThrown);
    Swal.fire({
        icon: 'error',
        title: 'Error en la solicitud',
        text: 'Hubo un problema al procesar la solicitud. Intente nuevamente más tarde.',
        showConfirmButton: false,
    });
    // Recargar la página después de 4 segundos (4000 milisegundos)
    setTimeout(function() {
        location.reload(); // Recargar la página
    },  1000);
}); --}}