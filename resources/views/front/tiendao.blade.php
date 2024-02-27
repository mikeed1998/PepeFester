@extends('layouts.front')

@section('title', 'Tienda')

@section('cssExtras')

@endsection

@section('styleExtras')

@endsection

@section('content')

<style>

    @font-face {
        font-family: 'Neusharp Bold';
        font-style: normal;
        font-weight: normal;
        src: local('Neusharp Bold'), url({{ asset('fonts/Neusharp-Bold/NeusharpBold-7B8RV.woff') }}) format('woff');
    }

    select {
        background-color: white;
        border: thin solid grey;
        border-radius: 4px;
        display: inline-block;
        font: inherit;
        line-height: 1.5em;
        padding: 0.5em 3.5em 0.5em 1em;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-appearance: none;
        -moz-appearance: none;
        margin-top: 0.7rem;
        width: 50px;
        color: white;
    }

    select.arrows {
        background-image:    url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAA3klEQVRIS+3VMU9CMRTF8d8zBL+aizoQFhx0kUk33RzdYMNFXUFnYeGrYYyaJiUxJHDLSxodbNKpfeffc9/pbaPyaCrr+3OA++z4rtT5Pg5GuMnCY9yWQEoBE1xhlUUP8YDrCBIB0vojLvGO0yz4hm4JJAKcYYoPHGOZAUdYoIMBXrc5iQAHeMlzviFygj7O8dkWEJU4XI8chALRhn9AVKHf70VRTHu4wFfbmKZLNKt50dLBnna0imcMd/2I0phWa3Y/D1e1Xa9BCZJG0VuQNpaWKMx72xS1Fl5/WN3BN+AgJhnZQlq4AAAAAElFTkSuQmCC');
        background-position: calc(100% - .5rem), 100% 0;
        background-size:  1.5em 1.5em;
        background-repeat: no-repeat;
        color: white;
    }

    select.arrows:focus {
        border-color: white;
        color: white;
        outline: 0;
    }


    .qty .count {
        color: black;
        display: inline-block;
        vertical-align: top;
        font-size: 25px;
        /* font-weight: 700; */
        line-height: 20px;
        padding: 0 2px;
        min-width: 1rem;
        text-align: center;
    }

    .qty .plus {
        cursor: pointer;
        display: inline-block;
        vertical-align: top;
        color: black;
        width: 1rem;
        height: 30px;
        font: 30px/1 Arial,sans-serif;
        text-align: center;
        border-radius: 50%;
    }

    .qty .minus {
        cursor: pointer;
        display: inline-block;
        vertical-align: top;
        color: black;
        width: 1rem;
        height: 30px;
        font: 30px/1 Arial,sans-serif;
        text-align: center;
        border-radius: 50%;
        background-clip: padding-box;
    }


    .circulo-img {
        border: 2px solid #E40821;
        border-radius: 100%;
        padding: 1rem;
    }

    .texto-circulo {
        font-size: 1rem;
        color: var(--azul-titulos);
        font-weight: bold;
        margin-top: 1rem;
    }

    .categorias {
        background-color: transparent;
    }

    .slick-dots li button {
        padding: 0;
    }

    .slick-dots {
        margin-top: 10px;
    }

    .link-categoria:hover .circulo-img {
        background-color: #E40821;
        border: 2px solid #E40821;
        border-radius: 100%;
        padding: 1rem;
    }

    .link-categoria:hover .texto-circulo {
        color: #E40821;
    }

    .link-categoria:hover .circulo-img img {
        filter: invert(100%);
    }

    /* Estilo para los puntos de cambio de slide */
    .slick-dots {
        display: flex;
        justify-content: center;
        background-color: var(--fondo-tienda);
        align-items: center;
        list-style: none;
        padding: 1rem;
        margin-top: 2.6rem;
    }

    .slick-dots li {
        margin: 0 8px; /* Espacio entre los puntos */
    }

    .slick-dots li button {
        width: 14px;
        height: 14px;
        border: 1px solid var(--azul-titulos); /* Color de los puntos inactivos */
        /* border: none; */
        border-radius: 50%; /* Hace que los puntos sean circulares */
        cursor: pointer;
        text-indent: -9999px; /* Oculta el texto del botón al moverlo fuera del área visible */
        overflow: hidden; /* Oculta cualquier contenido que se desborde del área del botón */
    }


    .slick-dots li.slick-active button {
        border: 1px solid #f00;
        background-color: #f00; /* Color del punto activo */
    }
    
    .card {
        --bs-card-spacer-y: 0rem;
        --bs-card-spacer-x: 0rem;
    }

    .carta.card:hover {
        transform: translateY(-40px);
        transition: transform 0.2s ease-in-out;
    }

   
    @media(min-width: 1800px) {
        .slick-prev {
            margin-left: 36rem;
        }

        .slick-next {
            margin-right: 36rem;
        }

        .img-producto {
            width: 100%;
            height: 28rem;
        }

        .icono {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: contain;
            width: 3rem;
            height: 3rem;
        }
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
        .slick-prev {
            margin-left: 34rem;
        }

        .slick-next {
            margin-right: 34rem;
        }

        .img-producto {
            width: 100%;
            height: 20rem;
        }

        .icono {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: contain;
            width: 2.8rem;
            height: 2.8rem;
        }
    }

    /* xl */
    @media (min-width: 1200px) and (max-width: 1400px) {
        .slick-prev {
            margin-left: 30rem;
        }

        .slick-next {
            margin-right: 30rem;
        }

        .img-producto {
            width: 100%;
            height: 18rem;
        }

        .icono {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: contain;
            width: 2.6rem;
            height: 2.6rem;
        }
    }

    /* lg */
    @media (min-width: 992px) and (max-width: 1200px) {
        .slick-prev {
            margin-left: 24rem;
        }

        .slick-next {
            margin-right: 24rem;
        }

        .img-producto {
            width: 100%;
            height: 18rem;
        }

        .icono {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: contain;
            width: 2.6rem;
            height: 2.6rem;
        }
    }

    /* md */
    @media (min-width: 768px) and (max-width: 992px) {
        .slick-prev {
            margin-left: 18rem;
        }

        .slick-next {
            margin-right: 18rem;
        }

        .img-producto {
            width: 100%;
            height: 26rem;
        }

        .icono {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: contain;
            width: 2.8rem;
            height: 2.8rem;
        }
    }

    /* sm */
    @media (min-width: 576px) and (max-width: 768px) {
        .slick-prev {
            visibility: hidden;
        }

        .slick-next {
            display: hidden;
        }

        .img-producto {
            width: 100%;
            height: 26rem;
        }

        .icono {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: contain;
            width: 2.8rem;
            height: 2.8rem;
        }
    }

    /* xs */
    @media (min-width: 0px) and (max-width: 576px) {
        .slick-prev {
            display: hidden;
        }

        .slick-next {
            display: hidden;
        }

        .img-producto {
            width: 100%;
            height: 24rem;
        }

        .icono {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: contain;
            width: 2.8rem;
            height: 2.8rem;
        }
    }


</style>

<section class="sub-categorias_tienda py-4 border-0" style="background-color: var(--fondo-tienda);">
    <div class="container-fluid">
        <div class="row bg-white shadow">
            <div class="categorias mt-4">

                @foreach ($categorias as $cate)
                    <a href="#/" class="link-categoria filter-option" data-filter=".categoria-{{ $cate->id }}" id="categoria-{{ $cate->id }}">
                        <div class="col-12 position-relative d-flex justify-content-center" style="margin-bottom: 100px;">
                            <div class="card border-0">
                                <div class="circulo-img">
                       {{--             <img src="{{ asset('img/photos/categorias/'.$cate->icono) }}" alt="" class="img-fluid w-auto" style="width: 3rem; height: 3rem; object-fit: cover;">--}}
                                     <div class="icono" style="
                                        background-image: url('{{ asset('img/photos/categorias/'.$cate->icono) }}');
                                    "></div>
                                </div>
                            </div>
                            <div class="col-10 mx-auto text-center position-absolute top-100 texto-circulo">
                                {{ $cate->categoria }}
                            </div>
                        </div>
                    </a>
                @endforeach
               
            </div>
        </div>
    

        <div class="row">
            
            <div class="col position-relative text-center slider-dots-container">
                <button class="slick-prev btn position-absolute start-0 mt-5"><img src="{{ asset('img/design/tienda/chev-le.png') }}" alt="" class="img-fluid"></button>    
                <div class="slider-dots"></div>
                <button class="slick-next btn position-absolute end-0 mt-5"><img src="{{ asset('img/design/tienda/chev-ri.png') }}" alt="" class="img-fluid"></button>
            </div>
            
        </div>
        
    </div>
</section>

<section class="sub-productos_tienda pb-5" style="background-color: var(--fondo-tienda);">
    <div class="container-fluid">

        <div class="row">
            <div class="col-12 titulo py-3 display-3 fw-bolder" id="categoria-titulo" style="text-align: center; color: var(--azul-titulos); font-family:'Neusharp Bold';">
                TODOS
            </div>
        </div>
        
        <div class="row js-filter">
            @php
                $cont = 0;
            @endphp
            @foreach ($productos as $prod)
                <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-9 col-xs-12 col-12 mt-5 ps-3 pe-3 mx-auto mb-5 categoria categoria-{{ $prod->categoria }}">
                    <div class="card carta bg-white" style="border-color: var(--azul-titulos); border-top-left-radius: 32px; border-bottom-left-radius: 32px; border-top-right-radius: 32px; border-bottom-right-radius: 0;">
                        <img src="{{ asset('img/photos/productos/'.$prod->imagen) }}" alt="" class="img-fluid img-producto m-0" style="border-top-left-radius: 32px; border-bottom-left-radius: 0; border-top-right-radius: 32px;">
                        <div class="card-body py-0 m-0">
                            <div class="row">
                                <div class="col-xxl-8 col-xl-9 col-lg-9 col-md-9 col-sm-9 col-xs-9 col-9 mx-auto text-start m-1 fs-5 fw-bolder">
                                    {{ $prod->nombre }}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xxl-8 col-xl-9 col-lg-9 col-md-9 col-sm-9 col-xs-9 col-9 mx-auto text-start text-secondary fs-5">
                                    @foreach ($categorias as $c)
                                        @if ($prod->categoria == $c->id)
                                            {{ $c->categoria }}
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xxl-8 col-xl-9 col-lg-9 col-md-9 col-sm-9 col-xs-9 col-9 mx-auto text-start fs-5 fw-bolder">
                                    ${{ $prod->precio }}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12 d-flex align-content-end justify-content-end text-end">
                                    <a href="{{ route('front.producto', ['id' => $prod->id]) }}" class="btn px-1 border-end border-white border-0 rounded-0 boton-prod" style="background-color: #E40821;">
                                        <img src="{{ asset('img/design/home/lupa.png') }}" alt="" class="img-fluid w-75 mx-auto">
                                    </a>

                                    <!-- This is a button toggling the modal -->
                                    <button uk-toggle="target: #prod-{{ $prod->id }}" type="button" class="btn px-1 border-start border-white border-0 rounded-0 boton-prod" style="background-color: #E40821;">
                                        <img src="{{ asset('img/design/home/cart.png') }}" alt="" class="img-fluid w-75 mx-auto">
                                    </button>

                                    <!-- This is the modal -->
                                    <div id="prod-{{ $prod->id }}" uk-modal>
                                        <div class="uk-modal-dialog uk-modal-body rounded">
                                            
                                            
                                            <form id="formu-{{ $prod->id }}" action="{{ route('addCard') }}" method="POST" enctype="multipart/form-data">
                                                @csrf
                                                <input type="hidden" name="id_prod" value="{{ $prod->id }}">
                                                <div class="row">
                                                    <div class="col-10 py-3 mx-auto text-center">
                                                        <h2>Detalles del producto</h2>
                                                    </div>
                                                    <div class="col-10 mx-auto text-center">
                                                        Cantidad
                                                    </div>
                                                    <div class="col-10 mx-auto">
                                                        <input type="number" name="cantidad" class="form-control" value="{{ ($prod->existencias <= 0) ? '0' : 1 }}" min="1" max="{{ $prod->existencias }}" {{ ($prod->existencias <= 0) ? 'disabled' : '' }}>
                                                        <small class="text-danger">{{ ($prod->existencias <= 0) ? 'No hay disponibles por el momento' : '' }}</small>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-9 mx-auto text-center">
                                                        Presentación
                                                    </div>
                                                    <div class="col-9 mx-auto">
                                                        <select name="presentacion" class="form-control text-dark" {{ ($prod->existencias <= 0) ? 'disabled' : '' }}>
                                                            {{-- <option value="default" disabled selected>Presentación</option> --}}
                                                            @foreach ($presentacion as $ppp)
                                                                @if ($ppp->producto == $prod->id)
                                                                    <option value="{{ $ppp->id }}" class="text-dark">{{ $ppp->presentacion }}</option>
                                                                @endif
                                                            @endforeach
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row py-3">
                                                    <div class="col-9 mx-auto">
                                                        <button type="submit" class="btn border-start text-white border-white border-0 rounded-0 boton-prod" style="background-color: #E40821;" {{ ($prod->existencias <= 0) ? 'disabled' : '' }}>
                                                            Agregar al carrito
                                                        </button>  
                                                        <button class="uk-modal-close btn bg-secondary text-white border-start border-white border-0 rounded-0 boton-prod" type="button">
                                                            Cancelar
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    
                                    {{-- <form id="formu-{{ $prod->id }}" action="{{ route('addCard') }}" method="POST" enctype="multipart/form-data">
                                        @csrf
                                        <input type="hidden" name="id_prod" value="{{ $prod->id }}">
                                        <input type="hidden" name="caca" value="test">
                                        <button type="submit" class="btn border-start border-white border-0 rounded-0 boton-prod" style="background-color: #E40821;">
                                            <img src="{{ asset('img/design/home/cart.png') }}" alt="" class="img-fluid">
                                        </button>  
                                    </form> --}}
                                            
                                        
                                    
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>

        
            @endforeach

        </div>

        {{-- <div class="row">
            <div class="col border border-danger display-5 text-center">
                La paginación se hará con laravel
            </div>
        </div> --}}
        
    </div>
    
</section>

@endsection

@section('jqueryExtra')
<script>
    $('.categorias').slick({
        dots: true,
        appendDots: $('.slider-dots-container'),
        infinite: false,
        speed: 300,
        slidesToShow: 5,
        slidesToScroll: 5,
        prevArrow: '.slick-prev', // Selector del botón anterior
        nextArrow: '.slick-next', // Selector del botón siguiente
        responsive: [
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3,
                infinite: true,
                dots: true
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }
        ]
    });
</script>


<script>
$(document).ready(function() {
var $grid = $('.js-filter').isotope({
    itemSelector: '.categoria',
    layoutMode: 'fitRows'
});

$('.filter-option').on('click', function(e) {
    e.preventDefault();
    var filterValue = $(this).data('filter');
    // console.log(filterValue);
    $grid.isotope({ filter: filterValue });
       // Captura el nombre de la categoría desde el enlace clicado
       var categoriaNombre = $(this).find('.texto-circulo').text();

// Actualiza el contenido de la etiqueta div con el nombre de la categoría
$('#categoria-titulo').text(categoriaNombre);
});
});

</script>

<script>
$(document).ready(function() {
var valorActual = 0; // Inicializa el valor actual

// Función para actualizar y mostrar el valor
function actualizarValor(nuevoValor) {
    // Actualiza la variable PHP $valor
    $.ajax({
        url: "actualizar_valor.php", // Nombre de tu archivo PHP para actualizar la variable
        type: "POST",
        data: { nuevoValor: nuevoValor },
        success: function(response) {
            // Actualiza la variable JavaScript
            valorActual = nuevoValor;
            console.log("Variable actualizada a: " + valorActual);
        },
        error: function(xhr, status, error) {
            // Maneja los errores de la solicitud AJAX
            console.error(error);
        }
    });
}

// Maneja el clic en enlaces con la clase "link-categoria"
$(".link-categoria").click(function(e) {
    e.preventDefault();
    var nuevoValor = 1; // Nuevo valor a establecer
    // Actualiza y muestra el valor
    actualizarValor(nuevoValor);
});
});

</script>

@endsection
