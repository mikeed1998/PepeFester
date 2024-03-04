@extends('layouts.front')

@section('title', 'Home')

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

    .card {
        --bs-card-spacer-y: 0rem;
        --bs-card-spacer-x: 0rem;
    }

    .carta.card:hover {
        transform: translateY(-40px);
        transition: transform 0.2s ease-in-out;
    }

    .input-home_contacto {
        padding-left: 3rem;
        color: var(--azul-titulos);
    }

    .input-home_contacto:focus {
        color: var(--azul-titulos);
    }

    .input-home_contacto::placeholder {
        color: var(--azul-titulos);
    }

    /* Estilo para los puntos de cambio de slide */
    .slick-dots {
        display: flex;
        justify-content: center;
        /* background-color: white; */
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

    @media(min-width: 1800px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 42rem;
            width: 100%;
            /* box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1); */
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 33rem;
            height: 33rem;
        }

        .card-hover {
            display: none;
        }

        .solucion-card:hover .card-hover {
            display: block;
        }

        .titulo-solucion {
            color: var(--azul-titulos);
            font-size: 2rem;
        }

        .titulo-home_contacto {
            font-size: 4rem;
        }

        .home-img_contacto {
            background-position: left center;
            background-repeat: no-repeat;
            height: 40rem;
            width: 100%;
        }

        .proyecto-uno {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 40rem;
            margin-left: 1rem;
            margin-right: 0;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 24.5rem;
            margin-left: 0;
            margin-right: 3rem;
        }

        .slick-prev {
            margin-left: 35rem;
        }

        .slick-next {
            margin-right: 35rem;
        }

        .img-producto {
            width: 100%;
            height: 28rem;
        }
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 40rem;
            width: 100%;
            /* box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1); */
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            width: 24rem;
            height: 24rem;
        }

        .card-hover {
            display: none;
        }

        .solucion-card:hover .card-hover {
            display: block;
        }

        .titulo-solucion {
            color: var(--azul-titulos);
            font-size: 1.6rem;
        }

        .titulo-home_contacto {
            font-size: 3.8rem;
        }

        .home-img_contacto {
            background-position: left center;
            background-repeat: no-repeat;
            height: 37rem;
            width: 100%;
        }

        .proyecto-uno {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 35rem;
            margin-left: 1rem;
            margin-right: 0;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
            margin-left: 0;
            margin-right: 3rem;
        }

        .slick-prev {
            margin-left: 30rem;
        }

        .slick-next {
            margin-right: 30rem;
        }

        .img-producto {
            width: 100%;
            height: 21rem;
        }
    }

    /* xl */
    @media (min-width: 1200px) and (max-width: 1400px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 36rem;
            width: 100%;
            /* box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1); */
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 20rem;
            height: 20rem;
        }

        .card-hover {
            display: none;
        }

        .solucion-card:hover .card-hover {
            display: block;
        }

        .titulo-solucion {
            color: var(--azul-titulos);
            font-size: 1.2rem;
        }

        .titulo-home_contacto {
            font-size: 3rem;
        }

        .home-img_contacto {
            background-position: left center;
            background-repeat: no-repeat;
            height: 36rem;
            width: 100%;
        }

        .proyecto-uno {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 32rem;
            margin-left: 1rem;
            margin-right: 0;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 20.5rem;
            margin-left: 0;
            margin-right: 1rem;
        }

        .slick-prev {
            margin-left: 30rem;
        }

        .slick-next {
            margin-right: 30rem;
        }

        .img-producto {
            width: 100%;
            height: 14rem;
        }
    }

    /* lg */
    @media (min-width: 992px) and (max-width: 1200px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 38rem;
            width: 100%;
            /* box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1); */
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 20rem;
            height: 20rem;
        }

        .card-hover {
            display: none;
        }

        .solucion-card:hover .card-hover {
            display: block;
        }

        .titulo-solucion {
            color: var(--azul-titulos);
            font-size: 1.2rem;
        }

        .titulo-home_contacto {
            font-size: 2.6rem;
        }

        .home-img_contacto {
            background-position: left center;
            background-repeat: no-repeat;
            height: 32rem;
            width: 100%;
        }

        .proyecto-uno {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 25rem;
            margin-left: 1rem;
            margin-right: 0;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 17rem;
            margin-left: 0;
            margin-right: 1rem;
        }

        .slick-prev {
            margin-left: 24rem;
        }

        .slick-next {
            margin-right: 24rem;
        }

        .img-producto {
            width: 100%;
            height: 22rem;
        }
    }

    /* md */
    @media (min-width: 768px) and (max-width: 991px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 38rem;
            width: 100%;
            /* box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1); */
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 23rem;
            height: 23rem;
        }

        .card-hover {
            display: none;
        }

        .solucion-card:hover .card-hover {
            display: block;
        }

        .titulo-solucion {
            color: var(--azul-titulos);
            font-size: 1.4rem;
        }

        .titulo-home_contacto {
            font-size: 2.6rem;
        }

        .home-img_contacto {
            background-position: left center;
            background-repeat: no-repeat;
            height: 45rem;
            width: 100%;
        }

        .home-img_contacto--container {
            margin-top: 16rem;
        }

        .proyecto-uno {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
            margin-bottom: 3rem;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .slick-prev {
            margin-left: 18rem;
        }

        .slick-next {
            margin-right: 18rem;
        }

        .img-producto {
            width: 100%;
            height: 20rem;
        }
    }

    /* sm */
    @media (min-width: 576px) and (max-width: 768px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 36rem;
            width: 100%;
            /* box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1); */
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 26rem;
            height: 26rem;
        }

        .card-hover {
            display: none;
        }

        .solucion-card:hover .card-hover {
            display: block;
        }

        .titulo-solucion {
            color: var(--azul-titulos);
            font-size: 1.8rem;
        }

        .titulo-home_contacto {
            font-size: 2.4rem;
        }

        .home-img_contacto {
            background-position: left center;
            background-repeat: no-repeat;
            height: 45rem;
            width: 100%;
        }

        .home-img_contacto--container {
            border-top-left-radius: 36%;
            margin-top: 16rem;
        }

        .proyecto-uno {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
            margin-bottom: 3rem;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .img-producto {
            width: 100%;
            height: 22rem;
        }
    }

    /* xs */
    @media (min-width: 0px) and (max-width: 576px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 32rem;
            width: 100%;
            /* box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1); */
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 23rem;
            height: 23rem;
        }

        .card-hover {
            display: none;
        }

        .solucion-card:hover .card-hover {
            display: block;
        }

        .titulo-solucion {
            color: var(--azul-titulos);
            font-size: 1.8rem;
        }

        .titulo-home_contacto {
            font-size: 2.4rem;
        }

        .home-img_contacto {
            background-position: left center;
            background-repeat: no-repeat;
            height: 45rem;
            width: 100%;
        }

        .home-img_contacto--container {
            border-top-left-radius: 30%;
            border-top-right-radius: 30%;
            margin-top: 14rem;
        }

        .proyecto-uno {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
            margin-bottom: 3rem;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
            margin-left: 1rem;
            margin-right: 1rem;
        }

        .img-producto {
            width: 100%;
            height: 20rem;
        }
    }

</style>

<div class="container-fluid"  data-aos="fade-up">
    <div class="row">
        <div class="col position-relative">
            <div class="col-6 position-absolute bottom-0 z-3">
                <div class="row">
                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-2 col-xs-2 col-2"></div>
                    <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-8 col-sm-10 col-xs-10 col-10 position-relative text-center slider-dots-container-pri">
                        <button class="slick-prev-pri btn position-absolute start-0 mt-5"><img src="{{ asset('img/design/tienda/chev-le.png') }}" alt="" class="img-fluid"></button>    
                        <div class="slider-dots"></div>
                        <button class="slick-next-pri btn position-absolute end-0 mt-5"><img src="{{ asset('img/design/tienda/chev-ri.png') }}" alt="" class="img-fluid"></button>
                    </div>
                   
                </div>
            </div>
            <div class="row">
                <div class="carrusel-principal px-0">
                    
                    @foreach ($slider_principal as $sp)
                        <div class="col position-relative slider-principal py-5" style="
                            background-image: url('{{ asset('img/photos/slider_principal/'.$sp->foto) }}'); 
                        ">
                            <div class="col-xxl-6 col-xl-6 col-lg-9 col-md-9 col-sm-12 col-xs-12 col-12 mt-5 position-absolute top-0 start-0 py-5">
                                <div class="row">
                                    <div class="col">
                                        <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-10 col-xs-10 col-10 mx-auto">
                                            <div class="row">
                                                <div class="col display-4 fw-bolder text-start" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
                                                    {{ $sp->titulo }}
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col py-3 text-start text-secondary" style="line-height: 1;">
                                                    {{ $sp->texto }}
                                                </div>
                                            </div>
                                            <div class="row mt-3">
                                                <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12 col-12">
                                                    <a href="{{ route('front.tienda') }}" class="btn btn-outlinr w-100 py-3 fs-4 rounded-pill" style="border: 1px solid var(--azul-titulos); color: var(--azul-titulos); text-decoration: none;">Explorar Tienda</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                    

                    
                </div>
            </div>
        </div>
    </div>
</div>

<section class="sub-nosotros ps-5 pe-5" style="background-color: #e7e7e7;"  data-aos="fade-up">
    <div class="container-fluid py-5">
        <div class="row py-5">
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto">
                <div class="row">
                    <div class="col">
                        <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements[1]->imagen) }}" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
            <div class="col-xxl-5 col-xl-5 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto">
                <div class="row">
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 py-4">
                        <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements[0]->imagen) }}" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="row">
                    <div class="col py-2 display-4" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
                        {{ $elements[2]->texto }}
                    </div>
                </div>
                <div class="row">
                    <div class="col-xxl-10 col-xl-11 col-lg-12 col-md-12 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-auto mx-sm-auto mx-xs-auto mx-auto py-2 text-secondary" style="line-height: 1;">
                        {{ $elements[3]->texto }}
                    </div>
                </div>
                <div class="row">
                   
                    <div class="col-xxl-6 col-xl-9 col-lg-12 col-md-6 py-4 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-auto mx-sm-auto mx-xs-auto mx-auto fs-3 py-2">
                        <a href="{{ route('front.soluciones') }}" class="btn btn-outline fs-3 py-3 w-100 rounded-pill" style="border: 1px solid var(--azul-titulos); color: var(--azul-titulos); text-decoration: none;">   
                        Soluciones
                        </a>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>

<section class="sub-productos"  data-aos="fade-up">
    <div class="container-fluid py-5">
        <div class="row py-3 ps-5 pe-5">
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto ps-xxl-5 ps-xl-5 ps-lg-5 ps-md-0 ps-sm-0 ps-xs-0 ps-0 display-3 fw-bold text-white text-xxl-start text-xl-start text-lg-start text-md-center text-sm-center text-xs-center text-center" style="font-family:'Neusharp Bold';">
                PRODUCTOS
            </div>
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto pe-xxl-5 pe-xl-5 pe-lg-5 pe-md-0 pe-sm-0 pe-xs-0 pe-0 text-xxl-end text-xl-end text-lg-end text-md-center text-sm-center text-xs-center text-center py-xxl-0 py-xl-0 py-lg-0 py-md-4 py-sm-4 py-xs-4 py-4">
                <a href="{{ route('front.tienda') }}" class="btn btn-outline fs-3 py-3 px-5 text-white border border-white rounded-pill" style="text-decoration: none;">
                    Explorar Tienda
                </a>
            </div>
        </div>
        <div class="row py-5 ps-3 pe-3">
            <div class="carrusel-productos">
                
            @foreach ($productos as $prod)
            @if ($prod->inicio == 1)
            <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-9 col-xs-12 col-12 mt-5 ps-3 pe-3 mx-auto mb-5 categoria categoria-{{ $prod->categoria }}">
                <div class="card carta bg-white" style="border-color: var(--azul-titulos); border-top-left-radius: 32px; border-bottom-left-radius: 32px; border-top-right-radius: 32px; border-bottom-right-radius: 0;">
                 
                    <img src="{{ asset('img/photos/pepe_productos/'.$prod->imagen) }}" alt="" class="img-fluid p-4 img-producto" style="border-top-left-radius: 32px; border-bottom-left-radius: 0; border-top-right-radius: 32px;">
                    <div class="card-body py-0 m-0">
                        <div class="row">
                            <div class="col-xxl-8 col-xl-9 col-lg-9 col-md-9 col-sm-9 col-xs-9 col-9 mx-auto text-start m-1 fs-5 fw-bolder">
                                {{ $prod->nombre }}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xxl-8 col-xl-9 col-lg-9 col-md-9 col-sm-9 col-xs-9 col-9 mx-auto text-start text-secondary fs-5">
                                @foreach ($subcategorias as $sc)
                                    @if ($prod->subcategoria == $sc->id)
                                        {{ $sc->subcategoria }}
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
                                                <div class="col-9 py-3 mx-auto text-center">
                                                    <h2>Detalles del producto</h2>
                                                </div>
                                                <div class="col-9 mx-auto text-center">
                                                    Cantidad
                                                </div>
                                                <div class="col-9 mx-auto">
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
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endif
                
        
            @endforeach

                
            </div>
        </div>
    </div>
</section>

<section class="sub-soluciones"  data-aos="fade-up">
    <div class="container-fluid mt-5 mb-5">
        <div class="row px-xxl-0 px-xl-5 px-lg-0 px-md-0 px-sm-0 px-xs-0 px-0">
            <div class="col px-xxl-5 px-xl-5 px-lg-5 px-md-3 px-sm-0 px-xs-0 px-0">
                <div class="row">
                    <div class="col display-3 fw-bolder text-center" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
                        SOLUCIONES
                    </div>
                </div>
                <div class="row px-xxl-5 px-xl-5 px-lg-5 px-md-3 px-sm-0 px-xs-0 px-0 mt-5 mb-5">
                    
                    @foreach ($soluciones as $sol)
                    <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12 col-12 d-flex align-content-center justify-content-center mx-auto py-xxl-3 py-xl-2 py-lg-2 py-md-2 py-sm-2 py-xs-2 py-2" data-aos="flip-up">
                        <div class="card position-relative solucion-card border border-2" style="background-image: url('{{ asset('img/photos/soluciones/'.$sol->imagen) }}'); background-size: contain;">       
                            <div class="card-body">
                            </div>
                            <div class="card card-hover position-absolute bg-white start-0 top-0 bottom-0 end-0" style="border-radius: 0; border-bottom: 5px solid red;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <div class="row">
                                                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4 col-4 mt-5 text-center mx-auto">
                                                    <img src="{{ asset('img/photos/soluciones/'.$sol->icono) }}" alt="" class="img-fluid">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col text-center titulo-solucion fw-bolder py-3">
                                                    {{ $sol->titulo }}
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xxl-9 col-xl-10 col-lg-11 col-md-11 col-sm-11 col-xs-11 col-11 text-secondary mx-auto text-center" style="line-height: 1;">
                                                    {{ $sol->descripcion }}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
        </div>
    </div>
</section>


<section class="home-soluciones" data-aos="fade-up">
    <div class="container-fluid mb-5 px-0">
        <div class="row mb-5">
            <div class="col-xxl-11 col-xl-10 col-lg-11 col-md-11 col-sm-11 col-xs-11 col-11 mx-auto">
                <div class="row">
                    <div class="col position-relative">
                        <div data-aos="zoom-in" class="col-xxl-4 col-xl-5 col-lg-5 col-md-9 col-sm-12 col-xs-12 col-12 ps-3 position-absolute top-0 start-0 cuadro-estatico bg-white z-3">
                            <div class="row">
                                <div class="col text-danger display-3 fw-bolder" style="font-family:'Neusharp Bold';">
                                    PROYECTOS
                                </div>
                            </div>
                            <div class="row">
                                <div class="col text-secondary" style="line-height: 1;">
                                    {{ $elements_proyectos[0]->texto }}
                                </div>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col mb-5">
                                @php
                                    $romper = 0;
                                    $i = 0;
                                    $n = 0;
                                @endphp
                                @if (count($proyectos) == 0)
                                    Vacio
                                @else
                                    <div class="carrusel-proyectos px-0">
                                    @while ($i < count($proyectos))
                                        @php
                                            $n = $i + 1;
                                        @endphp

                                        @if ($n % 3 == 1)
                                            <div class="col">
                                                <div class="row">
                                                    
                                                    <div data-aos="fade-right" class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12 col-12 mt-5">
                                                        <div class="row mt-5">
                                                            <div class="col-xxl-11 col-xl-11 col-lg-11 col-md-12 col-sm-12 col-xs-12 col-12 mt-5">
                                                                <div class="row mt-5">
                                                                    <div class="col position-relative proyecto-uno" style="
                                                                        background-image: url('{{ asset('img/photos/proyectos/'.$proyectos[$i]->imagen) }}');
                                                                    ">
                                                                        <div class="col-12 py-2 fs-4 ps-5 fw-bolder text-white position-absolute bottom-0 start-0" style="background-color: var(--azul-titulos)">
                                                                            {{ $proyectos[$i]->titulo }}
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12 col-12">
                                        @else
                                            @if ($n % 3 == 0)
                                                <div class="row mt-5">
                                                    <div data-aos="fade-left" class="col position-relative border proyecto-dos" style="
                                                        background-image: url('{{ asset('img/photos/proyectos/'.$proyectos[$i]->imagen) }}');
                                                    ">
                                                        <div class="col-12 py-2 fs-4 ps-5 fw-bolder text-white position-absolute bottom-0 start-0" style="background-color: var(--azul-titulos)">
                                                            {{ $proyectos[$i]->titulo }}
                                                        </div>
                                                    </div>
                                                </div>
                                            @else
                                                <div class="row">
                                                    <div data-aos="fade-left" class="col position-relative border proyecto-dos" style="
                                                        background-image: url('{{ asset('img/photos/proyectos/'.$proyectos[$i]->imagen) }}');
                                                    ">
                                                        <div class="col-12 py-2 fs-4 ps-5 fw-bolder text-white position-absolute bottom-0 start-0" style="background-color: var(--azul-titulos)">
                                                            {{ $proyectos[$i]->titulo }}
                                                        </div>
                                                    </div>
                                                </div>
                                            @endif
                                                        
                                        @endif

                                        @if ($i == count($proyectos))
                                            @php
                                                $romper = 1;
                                            @endphp
                                        @else 
                                            @php
                                                $romper = 0;
                                            @endphp
                                        @endif

                                        @if (($n) % 3 == 0)
                                                    </div>
                                                </div>
                                            </div>  
                                        @endif

                                        @if (($n) % 3 == 1 && $romper == 1)
                                                    </div>
                                                </div>
                                            </div>  
                                        @endif

                                        @if (($n) % 3 == 2 && $romper == 1)
                                                    </div>
                                                </div>
                                            </div>      
                                        @endif

                                        @php
                                            $i++;
                                        @endphp
                                    @endwhile
                                    </div>
                                @endif        

                            </div>
                        </div>
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
        </div>
    </div>
</section>

<section class="home-contacto"  data-aos="fade-up">
    <div class="container-fluid">
        <div class="row">
            <div class="col position-relative home-img_contacto" style="background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements_contacto[7]->imagen) }}');">
                <div id="home-img-contacto-container" data-aos="fade-left" class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-11 col-xs-12 col-12 py-5 position-absolute top-0 bottom-0 end-0 home-img_contacto--container" style="background-color: #E40821;">
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-4 mx-xl-4 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto fw-bolder text-start titulo-home_contacto text-white" style="font-family:'Neusharp Bold';">
                            CONTACTO
                        </div>
                    </div>
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-xxl-6 col-xl-6 col-lg-7 col-md-7 col-sm-9 col-xs-9 col-9 text-start text-white mx-xxl-4 mx-xl-4 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto" style="line-height: 1;">
                            {{ $elements[4]->texto }}
                        </div>
                    </div>
                    <form action="{{ route('formularioContac') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="tipoForm" value="nocontacto">
                        <input type="hidden" name="empresa" value="N/A">
                        <input type="hidden" name="whatsapp" value="0">
                        <input type="hidden" name="asunto" value="N/A">
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto ">
                            <input type="text" name="nombre" class="form-control py-xxl-3 py-xl-3 py-lg-2 fs-4 rounded-pill input-home_contacto" placeholder="Nombre" style="box-shadow: none;" required> 
                        </div>
                    </div>
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto ">
                            <input type="email" name="correo" class="form-control py-xxl-3 py-xl-3 py-lg-2 fs-4 rounded-pill input-home_contacto" placeholder="Email" style="box-shadow: none;" required>
                        </div>
                    </div>
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto ">
                            <input type="mensaje" class="form-control py-xxl-3 py-xl-3 py-lg-2 fs-4 rounded-pill input-home_contacto" placeholder="Mensaje" style="box-shadow: none;" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-xs-12 col-12 broder"></div>
                        <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12 col-12 
                                    mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto 
                                    text-xxl-end text-xl-end text-lg-end text-md-end text-sm-center text-xs-center text-center">
                            <input type="submit" class="btn w-50 btn-outline border border-white rounded-pill py-xxl-3 py-xl-3 py-lg-3 fs-4 text-white" value="Envia Mensaje">
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@section('jqueryExtra')
<script>
    const div = document.querySelector("#home-img-contacto-container");
    div.classList.add("rounded-start-pill");

    // Aplicar estilos de forma responsive
    window.addEventListener("resize", function() {
        const div = document.querySelector("#home-img-contacto-container");

        // Agrega la clase "rounded-start-pill" si la pantalla es mayor a 500 píxeles
        if (window.innerWidth >= 768) {
            div.classList.add("rounded-start-pill");
        } else if (window.innerWidth < 768 && window.innerWidth >= 576) {
            div.classList.remove("rounded-start-pill");
        } else {
            div.classList.remove("rounded-start-pill");
        }
    });

    // Aplicar estilos al cargar la página
    window.addEventListener("load", function() {
         // Agrega la clase "rounded-start-pill" si la pantalla es mayor a 500 píxeles
         if (window.innerWidth >= 768) {
            div.classList.add("rounded-start-pill");
        } else if (window.innerWidth < 768 && window.innerWidth >= 576) {
            div.classList.remove("rounded-start-pill");
        } else {
            div.classList.remove("rounded-start-pill");
        }
    });
</script>
<script>
    
    $('.carrusel-productos').slick({
        autoplay: true,
        dots: false,
        infinite: false,
        speed: 300,
        nextArrow: false,
        prevArrow: false,
        slidesToShow: 4,
        slidesToScroll: 4,
        responsive: [
        {
            breakpoint: 1300,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                infinite: false,
                dots: false
            }
        },
        {
            breakpoint: 900,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: false,
                dots: false
            }
        },
        {
            breakpoint: 600,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                infinite: false,
                dots: false
            }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
        ]
    });

    $('.carrusel-proyectos').slick({
        dots: true,
        appendDots: $('.slider-dots-container'),
        infinite: false,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
        prevArrow: '.slick-prev', // Selector del botón anterior
        nextArrow: '.slick-next', // Selector del botón siguiente
    });

    $('.carrusel-principal').slick({
        dots: true,
        appendDots: $('.slider-dots-container-pri'),
        infinite: false,
        speed: 300,
        slidesToShow: 1,
        slidesToScroll: 1,
        prevArrow: '.slick-prev-pri', // Selector del botón anterior
        nextArrow: '.slick-next-pri', // Selector del botón siguiente
    });

</script>
@endsection
