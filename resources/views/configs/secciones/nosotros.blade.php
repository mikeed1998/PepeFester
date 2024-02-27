@extends('layouts.admin')

@section('title', 'Nosotros')

@section('cssExtras')
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

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

    /* Estilo para el acordeón */
    .accordion-item {
        border: 1px solid #ccc;
        margin-bottom: 5px;
    }

    /* Estilo para el encabezado del acordeón */
    .accordion-header {
        color: #fff;
        padding: 10px;
        cursor: pointer;
        border-radius: 2rem;
    }

    /* Estilo para el contenido del acordeón */
    .accordion-content {
        display: none;
        padding: 10px;
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

    /* Estilo para el acordeón */
    .accordion-item {
        border: 1px solid #ccc;
        margin-bottom: 5px;
    }

    /* Estilo para el encabezado del acordeón */
    .accordion-header {
        background-color: #E40821;
        color: #fff;
        padding: 10px;
        cursor: pointer;
        border-radius: 2rem;
    }

    /* Estilo para el contenido del acordeón */
    .accordion-content {
        display: none;
        padding: 10px;
    }

    @media(min-width: 1800px) {
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

        .portada-subdistribuidor {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            border: 0px solid black;
            border-bottom-left-radius: 50%;
            border-bottom-right-radius: 50%;
            width: 100%;
            height: 54rem;
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

        .responsive-text {
            font-size: 3rem;
        }

        .responsive-text_accordion {
            font-size: 1.5rem;
        }

        #arrowImage {
            margin-top: 0.5rem;
        }

        .img-nosotros {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 36rem;
        }
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
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

        .portada-subdistribuidor {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            border: 0px solid black;
            border-bottom-left-radius: 50%;
            border-bottom-right-radius: 50%;
            width: 100%;
            height: 44rem;
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

        .responsive-text {
            font-size: 2.2rem;
        }

        .responsive-text_accordion {
            font-size: 1.5rem;
        }

        #arrowImage {
            margin-top: 0.2rem;
        }

        .img-nosotros {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 32rem;
        }
    }

    /* xl */
    @media (min-width: 1200px) and (max-width: 1400px) {
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

        .portada-subdistribuidor {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            border: 0px solid black;
            border-bottom-left-radius: 50%;
            border-bottom-right-radius: 50%;
            width: 100%;
            height: 44rem;
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

        .responsive-text {
            font-size: 2.6rem;
        }

        .responsive-text_accordion {
            font-size: 1.5rem;
        }

        .img-nosotros {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 28rem;
        }
    }

    /* lg */
    @media (min-width: 992px) and (max-width: 1200px) {
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

        .portada-subdistribuidor {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            border: 0px solid black;
            border-bottom-left-radius: 50%;
            border-bottom-right-radius: 50%;
            width: 100%;
            height: 40rem;
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

        .responsive-text {
            font-size: 2rem;
        }

        .responsive-text_accordion {
            font-size: 1.3rem;
        }

        .img-nosotros {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 24rem;
        }
    }

    /* md */
    @media (min-width: 768px) and (max-width: 992px) {
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

        .portada-subdistribuidor {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            border: 0px solid black;
            border-bottom-left-radius: 50%;
            border-bottom-right-radius: 50%;
            width: 100%;
            height: 36rem;
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

        .responsive-text {
            margin-top: .5rem;
            font-size: 1.6rem;
        }

        .responsive-text_accordion {
            font-size: 1.3rem;
        }

        .img-nosotros {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 20rem;
        }
    }

    /* sm */
    @media (min-width: 576px) and (max-width: 768px) {
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

        .portada-subdistribuidor {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            border: 0px solid black;
            border-bottom-left-radius: 50%;
            border-bottom-right-radius: 50%;
            width: 100%;
            height: 24rem;
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

        .responsive-text {
            font-size: 2rem;
        }

        .responsive-text_accordion {
            font-size: 1.2rem;
        }

        .img-nosotros {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 16rem;
        }
    }

    /* xs */
    @media (min-width: 0px) and (max-width: 576px) {
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

        .portada-subdistribuidor {
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            border: 0px solid black;
            border-bottom-left-radius: 50%;
            border-bottom-right-radius: 50%;
            width: 100%;
            height: 18rem;
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

        .responsive-text {
            font-size: 1.6rem;
        }

        .responsive-text_accordion {
            font-size: 1.2rem;
        }

        .img-nosotros {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 12rem;
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

<div class="container-fluid px-0">
    <div class="row">
        <div class="col portada-subdistribuidor" style="
            background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[0]->imagen) }}');
        ">
        <div class="col-12 position-absolute top-0 start-0">
            <form id="form_aux" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id_elemento" value="{{ $elements[0]->id }}">
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
    <div class="row mt-5">
        <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-11 col-xs-11 col-11 mx-auto mt-5 text-center display-4 fw-bolder" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
            NOSOTROS
        </div>
    </div>
    <div class="row">
        <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-10 col-xs-10 col-10 py-5 text-secondary mx-auto text-center" style="line-height: 1;">
            <div class="col-12 mb-2 text-center"><i class="fa-solid fa-pencil" style="font-size: 1.5rem;"></i></div>
            <textarea class="col-12 text-center editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-id="{{$elements[1]->id}}" data-table="Elemento" data-campo="texto" name="" id="" cols="30" rows="10" style="border-radius: 10px; border:none; background: #ededed">{{$elements[1]->texto}}</textarea>
        </div>        
    </div>
    <div class="row py-5">
        <div class="col-11 mx-auto">
            <div class="row">
                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12 col-12 d-flex align-content-center justify-content-center mx-auto py-xxl-3 py-xl-2 py-lg-2 py-md-2 py-sm-2 py-xs-2 py-2">
                    <div class="card position-relative solucion-card border border-2" style="
                        background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[3]->imagen) }}');
                    ">       
                       
                            <div class="col-12 position-absolute bottom-100 start-0">
                                <form id="form_aux3" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id_elemento" value="{{ $elements[3]->id }}">
                                    <input id="img_aux3" class="m-0 p-0" type="file" name="archivo">
                                    <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux3" style=" height: 100%; opacity: 100%; border-radius: 20px;">Actualizar imagen de fondo</label>
                                </form>
                                <script>
                                    $('#img_aux3').change(function(e) {
                                        $('#form_aux3').trigger('submit');
                                    });
                                </script>
                            </div>
                        
                        <div class="card card-hover position-absolute bg-white start-0 top-0 bottom-0 end-0" style="border-radius: 0; border-bottom: 5px solid red;">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="row">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4 col-4 mt-5 text-center mx-auto">
                                                <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements[2]->imagen) }}" alt="" class="img-fluid">
                                                <div class="col-12 d-flex align-content-center align-items-center position-absolute top-0 start-0">
                                                    <form id="form_aux2" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                                        @csrf
                                                        <input type="hidden" name="id_elemento" value="{{ $elements[2]->id }}">
                                                        <input id="img_aux2" class="m-0 p-0" type="file" name="archivo">
                                                        <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux2" style=" height: 100%; opacity: 100%; border-radius: 20px;">Actualizar icono</label>
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
                                            <div class="col text-center py-3">
                                                <input type="text" class="form-control text-center titulo-solucion fw-bolder bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[4]->id }}" value="{{ $elements[4]->texto }}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 text-secondary mx-auto text-center" style="line-height: 1;">
                                                <textarea rows="6" style="line-height: 1;" class="form-control text-center bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[5]->id }}">{{ $elements[5]->texto }}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12 col-12 d-flex align-content-center justify-content-center mx-auto py-xxl-3 py-xl-2 py-lg-2 py-md-2 py-sm-2 py-xs-2 py-2">
                    <div class="card position-relative solucion-card border border-2" style="
                        background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[7]->imagen) }}');
                    ">       
                       
                            <div class="col-12 position-absolute bottom-100 start-0">
                                <form id="form_aux5" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id_elemento" value="{{ $elements[7]->id }}">
                                    <input id="img_aux5" class="m-0 p-0" type="file" name="archivo">
                                    <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux5" style=" height: 100%; opacity: 100%; border-radius: 20px;">Actualizar imagen de fondo</label>
                                </form>
                                <script>
                                    $('#img_aux5').change(function(e) {
                                        $('#form_aux5').trigger('submit');
                                    });
                                </script>
                            </div>
                        
                        <div class="card card-hover position-absolute bg-white start-0 top-0 bottom-0 end-0" style="border-radius: 0; border-bottom: 5px solid red;">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="row">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4 col-4 mt-5 text-center mx-auto">
                                                <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements[6]->imagen) }}" alt="" class="img-fluid">
                                                <div class="col-12 d-flex align-content-center align-items-center position-absolute top-0 start-0">
                                                    <form id="form_aux4" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                                        @csrf
                                                        <input type="hidden" name="id_elemento" value="{{ $elements[6]->id }}">
                                                        <input id="img_aux4" class="m-0 p-0" type="file" name="archivo">
                                                        <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux4" style=" height: 100%; opacity: 100%; border-radius: 20px;">Actualizar icono</label>
                                                    </form>
                                                    <script>
                                                        $('#img_aux4').change(function(e) {
                                                            $('#form_aux4').trigger('submit');
                                                        });
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col text-center py-3">
                                                <input type="text" class="form-control text-center titulo-solucion fw-bolder bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[8]->id }}" value="{{ $elements[8]->texto }}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 text-secondary mx-auto text-center" style="line-height: 1;">
                                                <textarea rows="6" style="line-height: 1;" class="form-control text-center bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[9]->id }}">{{ $elements[9]->texto }}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-6 col-sm-12 col-xs-12 col-12 d-flex align-content-center justify-content-center mx-auto py-xxl-3 py-xl-2 py-lg-2 py-md-2 py-sm-2 py-xs-2 py-2">
                    <div class="card position-relative solucion-card border border-2" style="
                        background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[11]->imagen) }}');
                    ">       
                       
                            <div class="col-12 position-absolute bottom-100 start-0">
                                <form id="form_aux7" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                    @csrf
                                    <input type="hidden" name="id_elemento" value="{{ $elements[11]->id }}">
                                    <input id="img_aux7" class="m-0 p-0" type="file" name="archivo">
                                    <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux7" style=" height: 100%; opacity: 100%; border-radius: 20px;">Actualizar imagen de fondo</label>
                                </form>
                                <script>
                                    $('#img_aux7').change(function(e) {
                                        $('#form_aux7').trigger('submit');
                                    });
                                </script>
                            </div>
                        
                        <div class="card card-hover position-absolute bg-white start-0 top-0 bottom-0 end-0" style="border-radius: 0; border-bottom: 5px solid red;">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <div class="row">
                                            <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-4 col-sm-4 col-xs-4 col-4 mt-5 text-center mx-auto">
                                                <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements[10]->imagen) }}" alt="" class="img-fluid">
                                                <div class="col-12 d-flex align-content-center align-items-center position-absolute top-0 start-0">
                                                    <form id="form_aux6" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                                                        @csrf
                                                        <input type="hidden" name="id_elemento" value="{{ $elements[10]->id }}">
                                                        <input id="img_aux6" class="m-0 p-0" type="file" name="archivo">
                                                        <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux6" style=" height: 100%; opacity: 100%; border-radius: 20px;">Actualizar icono</label>
                                                    </form>
                                                    <script>
                                                        $('#img_aux6').change(function(e) {
                                                            $('#form_aux6').trigger('submit');
                                                        });
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col text-center py-3">
                                                <input type="text" class="form-control text-center titulo-solucion fw-bolder bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[12]->id }}" value="{{ $elements[12]->texto }}">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12 text-secondary mx-auto text-center" style="line-height: 1;">
                                                <textarea rows="6" style="line-height: 1;" class="form-control text-center bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[13]->id }}">{{ $elements[13]->texto }}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col text-center">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-info text-white" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Agregar necesidad
            </button>

            <!-- Modal -->
            <div class="modal modal-lg fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Agregar necesidad</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{ route('config.seccion.agnecesidades') }}" method="POST">
                                @csrf
                                <div class="row form-group py-2">
                                    <div class="col-12">
                                      <input type="text" name="necesidad" class="form-control" placeholder="Descripción" required>
                                    </div>
                                    <div class="col-6 mx-auto py-3 text-end">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="sector" value="hogar" id="flexRadioDefault1" required>
                                            <label class="form-check-label" for="flexRadioDefault1">
                                              Sector "Hogar"
                                            </label>
                                          </div>
                                    </div>
                                    <div class="col-6 mx-auto py-3 text-start">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="sector" value="privado" id="flexRadioDefault2" required>
                                            <label class="form-check-label" for="flexRadioDefault2">
                                              Sector "Privado"
                                            </label>
                                          </div>
                                    </div>
                                  </div>
                                <div class="row form-group">
                                    <div class="col-6 mx-auto text-center">
                                        <input type="submit" class="btn btn-info w-100 text-white" value="Guardar">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-11 py-5 mx-auto">
            <div class="accordion">
                <div class="accordion-item border-0">
                    <div class="accordion-header" style="background-color: #E40821;">
                        <div class="row">
                            <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-9 col-sm-12 col-xs-12 col-12 mt-2 text-xxl-center text-xl-end text-lg-center text-md-center text-sm-center text-xs-center text-center fw-bolder responsive-text" style="font-family:'Neusharp Bold';">
                            NECESIDADES PARA EL SECTOR HOGAR
                            </div>
                            <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-3 col-sm-12 col-xs-12 col-12 text-center">
                                <img id="arrowImage" src="{{ asset('img/design/subdistribuidor/flecha.png') }}" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <div  class="accordion-content">
                        
                        @foreach ($necesidades as $neh)
                            @if ($neh->tipo_sector == 1)
                                <div class="row">
                                    <div class="col">
                                        <div class="row">
                                            <div class="col-11 py-3 text-secondary mx-auto responsive-text_accordion">
                                                <textarea name="" id="" cols="30" rows="2" data-table="PFNecesidades" class="form-control border editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-campo="necesidades" data-id="{{ $neh->id }}">{{ $neh->necesidades }}</textarea>
                                            </div>
                                            <div class="col-1">
                                                <form action="{{route('config.seccion.elimnecesidades', ['nec' => $neh->id])}}" method="POST" class="col-12 text-center">
                                                    @csrf
                                                    <style>
                                                        .fa-trash:hover{
                                                            opacity: 50%;
                                                        }
                                                    </style>
                                                    <button class="col-12" style="background: none; border:none;">
                                                        <i class="fa-solid fa-trash my-3" style="font-size: 20px;"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col border-bottom border-2 border-danger"></div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach                   
                        
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <div class="row">
        <div class="col-11 py-5 mx-auto">
            <div class="accordion">
                <div class="accordion-item border-0">
                    <div class="accordion-header" style="background-color: var(--azul-titulos);">
                        <div class="row">
                            <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-9 col-sm-12 col-xs-12 col-12 mt-2 text-xxl-center text-xl-end text-lg-center text-md-center text-sm-center text-xs-center text-center fw-bolder responsive-text" style="font-family:'Neusharp Bold';">
                                NECESIDADES PARA EL SECTOR PRIVADO
                            </div>
                            <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-3 col-sm-12 col-xs-12 col-12 text-center">
                                <img id="arrowImage" src="{{ asset('img/design/nosotros/flecha2.png') }}" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <div  class="accordion-content">
                        
                        @foreach ($necesidades as $neh)
                            @if ($neh->tipo_sector == 2)
                                <div class="row">
                                    <div class="col">
                                        <div class="row">
                                            <div class="col-11 py-3 text-secondary mx-auto responsive-text_accordion">
                                                <textarea name="" id="" cols="30" rows="2" data-table="PFNecesidades" class="form-control border editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-campo="necesidades" data-id="{{ $neh->id }}">{{ $neh->necesidades }}</textarea>
                                            </div>
                                            <div class="col-1">
                                                <form action="{{route('config.seccion.elimnecesidades', ['nec' => $neh->id])}}" method="POST" class="col-12 text-center">
                                                    @csrf
                                                    <style>
                                                        .fa-trash:hover{
                                                            opacity: 50%;
                                                        }
                                                    </style>
                                                    <button class="col-12" style="background: none; border:none;">
                                                        <i class="fa-solid fa-trash my-3" style="font-size: 20px;"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col border-bottom border-2 border-danger"></div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach    

                    </div>
                </div>
            </div>
        </div> 
    </div>
</div>

<div class="container-fluid py-5 px-0">
    <div class="row">
        <div class="col position-relative img-nosotros" style="
            background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[14]->imagen) }}');
        ">
        <div class="col-12 position-absolute top-0 start-0">
            <form id="form_aux8" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id_elemento" value="{{ $elements[14]->id }}">
                <input id="img_aux8" class="m-0 p-0" type="file" name="archivo">
                <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux8" style=" height: 100%; opacity: 100%; border-radius: 20px;">Seleccionar archivo</label>
            </form>
            <script>
                $('#img_aux8').change(function(e) {
                    $('#form_aux8').trigger('submit');
                });
            </script>
        </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-10 col-xs-10 col-10 py-5 text-secondary mx-auto text-center" style="line-height: 1;">
                <div class="col-12 mb-2 text-center"><i class="fa-solid fa-pencil" style="font-size: 1.5rem;"></i></div>
                <textarea class="col-12 text-center editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-id="{{$elements[15]->id}}" data-table="Elemento" data-campo="texto" name="" id="" cols="30" rows="10" style="border-radius: 10px; border:none; background: #ededed">{{$elements[15]->texto}}</textarea>
            </div>
        </div>
    </div>
</div>

@endsection

@section('jqueryExtra')


<script>
        
    document.addEventListener("DOMContentLoaded", function () {
    const accordionItems = document.querySelectorAll(".accordion-item");

    accordionItems.forEach((item) => {
        const header = item.querySelector(".accordion-header");
        const content = item.querySelector(".accordion-content");
        const arrowImage = item.querySelector("#arrowImage"); // Selecciona la imagen

        header.addEventListener("click", function () {
            if (content.style.display === "none" || content.style.display === "") {
                content.style.display = "block";
                // Invierte la imagen horizontalmente
                arrowImage.style.transform = "scaleY(-1)";
            } else {
                content.style.display = "none";
                // Restablece la transformación de la imagen
                arrowImage.style.transform = "scaleY(1)";
            }
        });
    });
});

</script>
@endsection
