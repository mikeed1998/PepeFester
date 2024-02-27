@extends('layouts.admin')
@section('cssExtras')
	<link rel="stylesheet" href="{{asset('css/dropify.css')}}">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
@endsection
@section('jsLibExtras')
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

    .cuadro:hover {
        background-color: black; opacity: 80%;
    }

    .cuadro:hover > .btn {
        display: block;
        color: black;
        background-color: white;
        opacity: 100%;
    }

    .cuadro:hover > .btn:hover {
        display: block;
        color:black;
        background-color: red;
        opacity: 100%;
    }

    .cuadro > .btn {
        display: none;
    }

    .overlay-contacto {
        visibility: hidden;
    }

    .overlay-contacto:hover {
        visibility: visible;
    }


    .overlay-soluciones:hover {
        background-color: black; opacity: 80%;
    }

    .overlay-productos:hover {
        background-color: black; opacity: 80%;
    }

    .overlay-proyectos:hover {
        background-color: black; opacity: 80%;
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
            height: 40rem;
            width: 100%;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 33rem;
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
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 36rem;
            width: 100%;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            width: 24rem;
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
            height: 30rem;
            margin-left: 1rem;
            margin-right: 0;
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 19.5rem;
            margin-left: 0;
            margin-right: 3rem;
        }

        .slick-prev {
            margin-left: 20rem;
        }

        .slick-next {
            margin-right: 20rem;
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
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
        }

        .solucion-card {
            border-radius: 0; 
            background-position: center center;
            background-repeat: no-repeat;
            width: 20rem;
            height: 16rem;
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
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 20.5rem;
        }

        .slick-prev {
            margin-left: 30rem;
        }

        .slick-next {
            margin-right: 30rem;
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
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
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
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 17rem;
        }

        .slick-prev {
            margin-left: 24rem;
        }

        .slick-next {
            margin-right: 24rem;
        }
    }

    /* md */
    @media (min-width: 768px) and (max-width: 992px) {
        .slider-principal {
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            height: 38rem;
            width: 100%;
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
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
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
        }

        .slick-prev {
            margin-left: 18rem;
        }

        .slick-next {
            margin-right: 18rem;
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
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
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
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
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
            box-shadow: inset 0 0 0 1000px rgba(0, 0, 0, 0.1);
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
        }

        .proyecto-dos {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 22rem;
        }
    }

</style>

<style>
    /* input con opacidad y sin boton de selecciond e archivo */
		.file-upload input[type="file"] {
                    position: absolute;
                    left: -9999px;
                    }

                    .file-upload label {
                    display: inline-block;
                    background-color: #00000031;
                    color: #fff;
                    padding: 6px 12px;
                    cursor: pointer;
                    border-radius: 4px;
                    font-weight: normal;
                    /* opacity: 80%; */
                    }

                    .file-upload input[type="file"] + label:before {
                    content: "\f07b";
                    font-family: "Font Awesome 5 Free";
                    font-size: 16px;
                    margin-right: 5px;
                    transition: all 0.5s;
                    }

                    .file-upload input[type="file"] + label {
                        transition: all 0.5s;
                    }

                    .file-upload input[type="file"]:focus + label,
                    .file-upload input[type="file"] + label:hover {
                    backdrop-filter: blur(5px);
                    background-color: #41464a37;
                    opacity: 100%;
                    transition: all 0.5s;
                    }
    /* input con opacidad y sin boton de selecciond e archivo */
</style>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 d-flex justify-content-center align-items-center flex-column mt-2 text-center">
            <h3 class="fs-1 fw-bolder" style="color:black; font-family: Arial, sans-serif;">Agregar slider</h3>
            <form id="form_image_slider" action="imgSider" method="POST"  class="file-upload mt-2" style="" enctype="multipart/form-data">
                @csrf
                <input id="input_slider_img" class="m-0 p-0" type="file" name="archivo">
                <label class="col-12 m-0 p-2 d-flex justify-content-center align-items-center" for="input_slider_img" style="opacity: 100%; !important; border-radius: 26px; background-color: #44B2E3;">Seleccionar archivo</label>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col position-relative">
            {{-- <div class="col-6 position-absolute bottom-0 z-3">
                <div class="row">
                    <div class="col-xxl-2 col-xl-2 col-lg-3 col-md-3 col-sm-2 col-xs-2 col-2"></div>
                    <div class="col-xxl-4 col-xl-4 col-lg-6 col-md-8 col-sm-10 col-xs-10 col-10 position-relative text-center slider-dots-container-pri">
                        <button class="slick-prev-pri btn position-absolute start-0 "><img src="{{ asset('img/design/tienda/chev-le.png') }}" alt="" class="img-fluid"></button>    
                        <div class="slider-dots"></div>
                        <button class="slick-next-pri btn position-absolute end-0"><img src="{{ asset('img/design/tienda/chev-ri.png') }}" alt="" class="img-fluid"></button>
                    </div>
                   
                </div>
            </div> --}}
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
                                                <div class="col display-5 fw-bolder text-start" style="color: var(--azul-titulos);">
                                                    <textarea name="" id="" cols="30" rows="3" data-table="PFSliderPrincipal" class="form-control editar_text_seccion_global editarajax border border-white bg-transparent text-white " data-url="{{route('config.seccion.textglobalseccion')}}" data-campo="titulo" data-id="{{ $sp->id }}" style="font-size: 2rem; font-family:'Neusharp Bold';">{{ $sp->titulo }}</textarea>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col py-3   text-start text-secondary" style="line-height: 1;">
                                                    <textarea name="" id="" cols="30" rows="6" data-table="PFSliderPrincipal" class="form-control editar_text_seccion_global editarajax border border-white bg-transparent text-white" data-url="{{route('config.seccion.textglobalseccion')}}" data-campo="texto" data-id="{{ $sp->id }}">{{ $sp->texto }}</textarea>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12 col-12">
                                                    <a href="{{ route('front.tienda') }}" class="btn btn-outlinr disabled w-100 py-3 fs-5 rounded-pill" style="border: 1px solid var(--azul-titulos); color: var(--azul-titulos); text-decoration: none;">Explorar Tienda</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-1 py-3 position-absolute top-0 end-0">
                                <form action="{{ route('config.seccion.delSide', [$sp->id]) }}" method="POST" style="display: inline;">						
                                    @csrf
                                    @method('DELETE') 
                                    <button type="submit" class="btn btn-danger btn-block bg-danger rounded-pill"><i class="fas fa-trash"></i></button>
                                </form>
                            </div>
                        </div>
                    @endforeach
                    

                    
                </div>
            </div>
        </div>
    </div>
</div>

<section class="sub-nosotros ps-5 pe-5" style="background-color: #e7e7e7;">
    <div class="container-fluid py-5">
        <div class="row py-5">
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto">
                <div class="row">
                    <div class="col position-relative">
                        <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements[1]->imagen) }}" alt="" class="img-fluid">
                        <div class="col-12 position-absolute top-50 start-50 translate-middle">
                            <form id="form_aux" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id_elemento" value="{{ $elements[1]->id }}">
                                <input id="img_aux" class="m-0 p-0" type="file" name="archivo">
                                <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux" style=" height: 100%; opacity: 100%; border-radius: 20px;">Seleccionar archivo</label>
                            </form>
                            <script>
                                $('#img_aux').change(function(e) {
                                    $('#form_aux').trigger('submit');
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto">
                <div class="row">
                    <div class="col position-relative py-4">
                        <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements[0]->imagen) }}" alt="" class="img-fluid">
                        <div class="col-12 position-absolute top-50 start-50 translate-middle">
                            <form id="form_aux2" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id_elemento" value="{{ $elements[0]->id }}">
                                <input id="img_aux2" class="m-0 p-0" type="file" name="archivo">
                                <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux2" style=" height: 100%; opacity: 100%; border-radius: 20px;">Seleccionar archivo</label>
                            </form>
                            <script>
                                $('#img_aux2').change(function(e) {
                                    $('#form_aux2').trigger('submit');
                                });
                            </script>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col py-2">
                        <textarea name="" id="" cols="30" rows="2" class="form-control editar_text_seccion_global border border-secondary bg-transparent fs-1 editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[2]->id }}" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">{{ $elements[2]->texto }}</textarea>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-auto mx-sm-auto mx-xs-auto mx-auto py-2 text-secondary" style="line-height: 1;">
                        <textarea name="" id="" cols="30" rows="6" class="form-control editar_text_seccion_global border border-secondary bg-transparent editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[3]->id }}">{{ $elements[3]->texto }}</textarea>
                    </div>
                </div>
                <div class="row">
                   
                    <div class="col-xxl-6 col-xl-6 col-lg-12 col-md-6 col-sm-12 col-xs-12 col-12 py-4 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-auto mx-sm-auto mx-xs-auto mx-auto fs-3 py-2">
                        <a href="{{ route('front.soluciones') }}" class="btn btn-outline disabled fs-5 py-3 w-100 rounded-pill" style="border: 1px solid var(--azul-titulos); color: var(--azul-titulos); text-decoration: none;">   
                        Soluciones
                        </a>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>

<section class="sub-productos">
    <div class="container-fluid">
        <div class="row">
            <div class="col position-relative">
                <div class="col-12 d-flex cuadro align-items-center text-center flex-column justify-content-center position-absolute overlay-proyectos top-0 bottom-0 start-0 z-3">                    
                    <a href="{{ route('config.seccion.show', ['slug' => 'store']) }}" class="btn btn-outline p-3 fs-5 bg-white">Editar en Tienda</a>
                </div>
                <div class="row py-5 ps-5 pe-5">
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto ps-xxl-5 ps-xl-5 ps-lg-5 ps-md-0 ps-sm-0 ps-xs-0 ps-0 display-3 fw-bold text-white text-xxl-start text-xl-start text-lg-start text-md-center text-sm-center text-xs-center text-center" style="font-family:'Neusharp Bold';">
                        PRODUCTOS
                    </div>
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto pe-xxl-5 pe-xl-5 pe-lg-5 pe-md-0 pe-sm-0 pe-xs-0 pe-0 text-xxl-end text-xl-end text-lg-end text-md-center text-sm-center text-xs-center text-center py-xxl-0 py-xl-0 py-lg-0 py-md-4 py-sm-4 py-xs-4 py-4">
                        <a href="{{ route('front.tienda') }}" class="btn btn-outline fs-3 py-3 px-5 disabled text-white border border-white rounded-pill" style="text-decoration: none;">
                            Explorar Tienda
                        </a>
                    </div>
                </div>
                <div class="row py-5 ps-3 pe-3">
                    <div class="carrusel-productos">
                        
                    @foreach ($productos as $prod)
                        <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-9 col-xs-12 col-12 mt-5 ps-3 pe-3 mx-auto mb-5 categoria categoria-{{ $prod->categoria }}">
                            <div class="card carta bg-white" style="border-color: var(--azul-titulos); border-top-left-radius: 32px; border-bottom-left-radius: 32px; border-top-right-radius: 32px; border-bottom-right-radius: 0;">
                                <img src="{{ asset('img/design/home/producto01.png') }}" alt="" class="img-fluid m-0" style="border-top-left-radius: 50px; border-bottom-left-radius: 50px; border-top-right-radius: 50px;">
                                <div class="card-body py-0 m-0">
                                    <div class="row">
                                        <div class="col text-center fs-5 fw-bolder">
                                            {{ $prod->nombre }}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col text-center text-secondary fs-5">
                                            @foreach ($categorias as $c)
                                                @if ($prod->categoria == $c->id)
                                                    {{ $c->categoria }}
                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col text-center fs-5 fw-bolder">
                                            ${{ $prod->precio }}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 d-flex align-content-end justify-content-end text-end">
                                            <a href="{{ route('front.producto', ['id' => $prod->id]) }}" class="btn border-end border-white border-0 rounded-0 boton-prod" style="background-color: #E40821;">
                                                <img src="{{ asset('img/design/home/lupa.png') }}" alt="" class="img-fluid">
                                            </a>
                                            <a href="#" class="btn border-start border-white border-0 rounded-0 boton-prod" style="background-color: #E40821;">
                                                <img src="{{ asset('img/design/home/cart.png') }}" alt="" class="img-fluid">
                                            </a>
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
</section>

<section class="sub-soluciones">
    <div class="container-fluid mt-5 mb-5">
        <div class="row px-xxl-0 px-xl-5 px-lg-0 px-md-0 px-sm-0 px-xs-0 px-0">
            <div class="col position-relative px-xxl-5 px-xl-5 px-lg-5 px-md-3 px-sm-0 px-xs-0 px-0">
                <div class="row">
                    <div class="col display-3 fw-bolder text-center" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
                        SOLUCIONES
                    </div>
                </div>
                <div class="row px-xxl-5 px-xl-5 px-lg-5 px-md-3 px-sm-0 px-xs-0 px-0 mt-5 mb-5">
                    
                    @foreach ($soluciones as $sol)
                    <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12 col-12 d-flex align-content-center justify-content-center mx-auto py-xxl-3 py-xl-2 py-lg-2 py-md-2 py-sm-2 py-xs-2 py-2">
                        <div class="card position-relative solucion-card border border-2" style="background-image: url('{{ asset('img/design/home/solucion01.png') }}');">       
                            <div class="card-body">
                            </div>
                            <div class="card card-hover position-absolute bg-white start-0 top-0 bottom-0 end-0" style="border-radius: 0; border-bottom: 5px solid red;">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <div class="row">
                                                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4 col-4 mt-5 text-center mx-auto">
                                                    <img src="{{ asset('img/design/home/logito.png') }}" alt="" class="img-fluid">
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
                <div class="col-12 d-flex cuadro align-items-center text-center flex-column justify-content-center position-absolute overlay-proyectos top-0 bottom-0 start-0 z-3">                    
                    <a href="{{ route('config.seccion.show', ['slug' => 'solutios']) }}" class="btn btn-outline p-3 fs-5 bg-white">Editar en Soluciones</a>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="home-soluciones">
    <div class="container-fluid mb-5 px-0">
        <div class="row mb-5">
            <div class="col-xxl-11 col-xl-10 col-lg-11 col-md-11 col-sm-11 col-xs-11 col-11 mx-auto position-relative">
                <div class="row">
                    <div class="col position-relative">
                        <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-9 col-sm-12 col-xs-12 col-12 ps-3 position-absolute top-0 start-0 cuadro-estatico bg-white z-3">
                            <div class="row">
                                <div class="col text-danger display-5 fw-bolder" style="font-family:'Neusharp Bold';">
                                    PROYECTOS
                                </div>
                            </div>
                            <div class="row">
                                <div class="col text-secondary" style="line-height: 1;">
                                    <textarea name="" id="" cols="30" rows="5" class="form-control bg-white border" style="line-height: 1;">Lorem, Lorem ipsum dolor sit amet. Lorem ipsum dolor, sit amet consectetur adipisicing elit. Fugiat, ex! ipsum dolor sit amet consectetur adipisicing elit. Similique animi quidem aliquid iusto. Tempore repudiandae alias, maxime blanditiis ratione veniam!</textarea>
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
                                                    
                                                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-12 col-sm-12 col-xs-12 col-12 mt-5">
                                                        <div class="row mt-5">
                                                            <div class="col-xxl-11 col-xl-11 col-lg-11 col-md-12 col-sm-12 col-xs-12 col-12 mt-5">
                                                                <div class="row mt-5">
                                                                    <div class="col position-relative proyecto-uno" style="
                                                                        background-image: url('{{ asset('img/design/home/pro1.png') }}');
                                                                    ">
                                                                        <div class="col-12 py-2 text-white position-absolute bottom-0 start-0" style="background-color: var(--azul-titulos)">
                                                                            <textarea name="" id="" cols="30" rows="1" class="form-control bg-transparent text-white fs-4 fw-bolder ps-5">{{ $proyectos[$i]->titulo }}</textarea>
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
                                                    <div class="col position-relative border proyecto-dos" style="
                                                        background-image: url('{{ asset('img/design/home/pro3.png') }}');
                                                    ">
                                                        <div class="col-12 py-2 text-white position-absolute bottom-0 start-0" style="background-color: var(--azul-titulos)">
                                                            <textarea name="" id="" cols="30" rows="1" class="form-control bg-transparent text-white fs-4 fw-bolder ps-5">{{ $proyectos[$i]->titulo }}</textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                            @else
                                                <div class="row">
                                                    <div class="col position-relative border proyecto-dos" style="
                                                        background-image: url('{{ asset('img/design/home/pro3.png') }}');
                                                    ">
                                                        <div class="col-12 py-2 text-white position-absolute bottom-0 start-0" style="background-color: var(--azul-titulos)">
                                                            <textarea name="" id="" cols="30" rows="1" class="form-control bg-transparent text-white fs-4 fw-bolder ps-5">{{ $proyectos[$i]->titulo }}</textarea>
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
                {{-- <div class="row">
            
                    <div class="col position-relative text-center slider-dots-container">
                        <button class="slick-prev btn position-absolute start-0 mt-5"><img src="{{ asset('img/design/tienda/chev-le.png') }}" alt="" class="img-fluid"></button>    
                        <div class="slider-dots"></div>
                        <button class="slick-next btn position-absolute end-0 mt-5"><img src="{{ asset('img/design/tienda/chev-ri.png') }}" alt="" class="img-fluid"></button>
                    </div>
                    
                </div> --}}
                <div class="col-12 d-flex cuadro align-items-center text-center flex-column justify-content-center position-absolute overlay-proyectos top-0 bottom-0 start-0 z-3">                    
                    <a href="{{ route('config.seccion.show', ['slug' => 'proyects']) }}" class="btn btn-outline p-3 fs-5 bg-white">Editar en Proyectos</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="home-contacto">
    <div class="container-fluid position-relative">
        <div class="row">
            <div class="col position-relative home-img_contacto" style="background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[6]->imagen) }}');">
                <div class="col-12 position-absolute top-0 start-0">
                    <form id="form_aux8" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id_elemento" value="{{ $elements[6]->id }}">
                        <input id="img_aux8" class="m-0 p-0" type="file" name="archivo">
                        <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux8" style=" height: 100%; opacity: 100%; border-radius: 20px;">Seleccionar archivo</label>
                    </form>
                    <script>
                        $('#img_aux8').change(function(e) {
                            $('#form_aux8').trigger('submit');
                        });
                    </script>
                </div>
                <div id="home-img-contacto-container" class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-11 col-xs-12 col-12 py-5 position-absolute top-0 bottom-0 end-0 home-img_contacto--container" style="background-color: #E40821;">
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-4 mx-xl-4 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto fw-bolder text-start titulo-home_contacto text-white" style="font-family:'Neusharp Bold';">
                            CONTACTO
                        </div>
                    </div>
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-xxl-6 col-xl-6 col-lg-7 col-md-7 col-sm-9 col-xs-9 col-9 text-start text-white mx-xxl-4 mx-xl-4 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto" style="line-height: 1;">
                            <textarea name="" id="" cols="30" rows="4" class="form-control shadow-none text-white bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[4]->id }}" style="line-height: 1;">
                                {{ $elements[4]->texto }}
                            </textarea>
                        </div>
                    </div>
                    <form action="" method="POST">
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto ">
                            <input type="text" class="form-control py-xxl-3 py-xl-3 py-lg-2 fs-4 rounded-pill input-home_contacto" placeholder="Nombre" style="box-shadow: none;" disabled> 
                        </div>
                    </div>
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto ">
                            <input type="text" class="form-control py-xxl-3 py-xl-3 py-lg-2 fs-4 rounded-pill input-home_contacto" placeholder="Email" style="box-shadow: none;" disabled>
                        </div>
                    </div>
                    <div class="row py-2">
                        <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-2 col-sm-2 col-xs-12 col-12 "></div>
                        <div class="col-9 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto ">
                            <input type="text" class="form-control py-xxl-3 py-xl-3 py-lg-2 fs-4 rounded-pill input-home_contacto" placeholder="Mensaje" style="box-shadow: none;" disabled>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-3 col-xs-12 col-12"></div>
                        <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-8 col-sm-12 col-xs-12 col-12
                                    mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-0 mx-xs-auto mx-auto 
                                    text-xxl-end text-xl-end text-lg-end text-md-end text-sm-center text-xs-center text-center">
                            <input type="submit" class="btn w-100 btn-outline border border-white rounded-pill py-xxl-3 py-xl-3 py-lg-3 fs-5 text-white" value="Envia Mensaje" disabled>
                        </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        {{-- <div class="container-fluid overlay-contacto position-absolute bottom-0 top-0 start-0 bg-dark">

        </div> --}}
    </div>
</section>

@endsection



@section('jsLibExtras2')
	<script src="{{asset('js/dropify.js')}}" charset="utf-8"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
@endsection

@section('jqueryExtra')
<script>
    $('#input_slider_img').change(function(e) {
		$('#form_image_slider').trigger('submit');
	});

</script>

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
        slidesToShow: 3,
        slidesToScroll: 1,
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
