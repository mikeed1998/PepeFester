@extends('layouts.admin')

@section('title', 'Subdistribuidores')

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

    @media(min-width: 1800px) {
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
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
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
            font-size: 2rem;
        }

        .responsive-text_accordion {
            font-size: 1.2rem;
        }

        #arrowImage {
            margin-top: 0.2rem;
        }
    }

    /* xl */
    @media (min-width: 1200px) and (max-width: 1400px) {
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
    }

    /* lg */
    @media (min-width: 992px) and (max-width: 1200px) {
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
    }

    /* md */
    @media (min-width: 768px) and (max-width: 992px) {
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
    }

    /* sm */
    @media (min-width: 576px) and (max-width: 768px) {
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
    }

    /* xs */
    @media (min-width: 0px) and (max-width: 576px) {
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
            DISTRIBUIDOR
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-11 col-xs-11 col-11 py-5 text-secondary mx-auto" style="line-height: 1; text-align: justify;">
                <div class="col-12 mb-2 text-center"><i class="fa-solid fa-pencil" style="font-size: 1.5rem;"></i></div>
                <textarea class="col-12 text-start editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-id="{{$elements[1]->id}}" data-table="Elemento" data-campo="texto" name="" id="" cols="30" rows="10" style="border-radius: 10px; border:none; background: #ededed">{{$elements[1]->texto}}</textarea>
            </div>
        </div>
    </div>
</div>


<div class="container-fluid px-0">
    <div class="row">
        <div class="col text-center">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-info text-white" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                Agregar beneficio
            </button>

            <!-- Modal -->
            <div class="modal modal-lg fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Agregar beneficio</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="{{ route('config.seccion.agsubdistribuidor') }}" method="POST">
                                @csrf
                                <div class="row form-group py-2">
                                    <div class="col-12">
                                        <input type="text" name="beneficio" class="form-control" placeholder="Descripción" required>
                                    </div>
                                    <div class="col-12 text-center">
                                        <input type="submit" class="btn btn-info text-white" value="Guardar">
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
                    <div class="accordion-header">
                        <div class="row">
                            <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-9 col-sm-12 col-xs-12 col-12 text-xxl-center text-xl-end text-lg-center text-md-center text-sm-center text-xs-center text-center fw-bolder responsive-text" style="font-family:'Neusharp Bold';">
                                BENEFICIOS DE SER DISTRIBUIDOR
                            </div>
                            <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-3 col-sm-12 col-xs-12 col-12 text-center">
                                <img id="arrowImage" src="{{ asset('img/design/subdistribuidor/flecha.png') }}" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                    <div  class="accordion-content">

                        @foreach ($subdistribuidores as $subd)
                        <div class="row">
                            <div class="col">
                                <div class="row">
                                    <div class="col-11 py-3 text-secondary mx-auto responsive-text_accordion">
                                        <textarea name="" id="" cols="30" rows="2"  class="form-control border editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="PFSubdistribuidor" data-campo="beneficio" data-id="{{ $subd->id }}">{{ $subd->beneficio }}</textarea>
                                    </div>
                                    <div class="col-1">
                                        <form action="{{route('config.seccion.elimsubdistribuidor', ['sub' => $subd->id])}}" method="POST" class="col-12 text-center">
                                            @csrf
                                            <style>
                                                .fa-trash:hover{
                                                    opacity: 50%;
                                                }
                                            </style>
                                            <button class="col-12" style="background: none; border:none;">
                                                <i  class="fa-solid fa-trash my-3" style="font-size: 20px;"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col border-bottom border-2 border-danger"></div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div> 
    </div>
</div>

<section class="home-contacto">
    <div class="container-fluid position-relative">
        <div class="row">
            <div class="col position-relative home-img_contacto" style="background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elem_general[36]->imagen) }}');">
                <div class="col-12 position-absolute top-0 start-0">
                    <form id="form_aux8" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="id_elemento" value="{{ $elem_general[36]->id }}">
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
                            <textarea name="" id="" cols="30" rows="4" class="form-control text-white bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elem_general[4]->id }}" style="line-height: 1;">
                                {{ $elem_general[4]->texto }}
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
                            <input type="submit" class="btn w-100 btn-outline border border-white rounded-pill py-xxl-3 py-xl-3 py-lg-3 fs-4 text-white" value="Envia Mensaje" disabled>
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
