@extends('layouts.front')

@section('title', 'Subdistribuidores')

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
            font-size: 2.6rem;
        }

        .responsive-text_accordion {
            font-size: 1.5rem;
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

<div class="container-fluid px-0" data-aos="fade-up">
    <div class="row">
        <div class="col portada-subdistribuidor" style="
            background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[0]->imagen) }}');
        "></div>
    </div>
    <div class="row mt-5">
        <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-11 col-xs-11 col-11 mx-auto mt-5 text-center display-3 fw-bolder" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
            DISTRIBUIDOR
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-11 col-xs-11 col-11 py-3 text-secondary mx-auto" style="line-height: 1; text-align: center;">
                {{ $elements[1]->texto }}
            </div>
        </div>
    </div>
</div>


<div class="container-fluid" data-aos="fade-up">
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

                        @foreach ($subdistribuidores as $sub)
                            <div class="row">
                                <div class="col">
                                    <div class="row">
                                        <div class="col-11 py-3 text-secondary mx-auto responsive-text_accordion">
                                            {{ $sub->beneficio }}
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


<section class="home-contacto" data-aos="fade-up">
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
                            {{ $elements_home[4]->texto }}
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
                            <input type="text" name="mensaje" class="form-control py-xxl-3 py-xl-3 py-lg-2 fs-4 rounded-pill input-home_contacto" placeholder="Mensaje" style="box-shadow: none;" required>
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
