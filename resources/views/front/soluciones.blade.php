@extends('layouts.front')

@section('title', 'Soluciones')

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

    .card-body {
        background-color: var(--azul-titulos);
        border-bottom-left-radius: 2rem;
        border-bottom-right-radius: 2rem;
    }

    .card-body:hover {
        background-color: #E40821;
        border-bottom-left-radius: 2rem;
        border-bottom-right-radius: 2rem;
    }

    .card-soluciones {
        color: var(--blanco);
        border: 1px solid white;
        border-top-left-radius: 0px;
        border-top-right-radius: 0px;
        border-bottom-left-radius: 2rem;
        border-bottom-right-radius: 2rem;
    }

    

    .card-soluciones_img-icono {
        border: 1px solid white;
        border-top-left-radius: 0px;
        border-top-right-radius: 0px;
        border-bottom-left-radius: 2rem;
        border-bottom-right-radius: 0rem;
    }

    .slick-dots li button {
        padding: 0;
    }

    .slick-dots {
        margin-top: 0px;
    }

     .slick-dots {
        display: flex;
        justify-content: center;
        background-color: white;
        align-items: center;
        list-style: none;
        padding: 1rem;
        margin-top: 2.6rem;
    }

    .slick-dots li {
        margin: 0 8px; 
    }

    .slick-dots li button {
        width: 14px;
        height: 14px;
        border: 1px solid var(--azul-titulos);
        /* border: none; */
        border-radius: 50%; 
        cursor: pointer;
        text-indent: -9999px; 
        overflow: hidden; 
    }


    .slick-dots li.slick-active button {
        border: 1px solid #f00;
        background-color: #f00;
    }


    @media(min-width: 1800px) {
        .card-soluciones_img {
            background-size: cover;
            height: 42rem;
        }

        .card-soluciones_img-icono {
            height: 12rem;
            width: 12rem; 
        }

        .slick-prev {
            margin-left: 36rem;
        }

        .slick-next {
            margin-right: 36rem;
        }
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
        .card-soluciones_img {
            background-size: cover;
            height: 42rem;
        }
        
        .card-soluciones_img-icono {
            height: 12rem;
            width: 12rem; 
        }
        
        .slick-prev {
            margin-left: 34rem;
        }

        .slick-next {
            margin-right: 34rem;
        }
    }

    /* xl */
    @media (min-width: 1200px) and (max-width: 1400px) {
        .card-soluciones_img {
            background-size: cover;
            height: 36rem;
        }

        .card-soluciones_img-icono {
            height: 12rem;
            width: 12rem; 
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
        .card-soluciones_img {
            background-size: cover;
            height: 36rem;
        }

        .card-soluciones_img-icono {
            height: 12rem;
            width: 12rem; 
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
        .card-soluciones_img {
            background-size: cover;
            height: 36rem;
        }

        .card-soluciones_img-icono {
            height: 12rem;
            width: 12rem; 
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
        .card-soluciones_img {
            background-size: cover;
            height: 36rem;
        }

        .card-soluciones_img-icono {
            height: 12rem;
            width: 12rem; 
        }

        .slick-prev {
            visibility: hidden;
        }

        .slick-next {
            visibility: hidden;
        }
    }

    /* xs */
    @media (min-width: 0px) and (max-width: 576px) {
        .card-soluciones_img {
            background-size: cover;
            height: 32rem;
        }

        .card-soluciones_img-icono {
            height: 12rem;
            width: 12rem; 
        }

        .slick-prev {
            visibility: hidden;
        }

        .slick-next {
            visibility: hidden;
        }
    }

</style>

<div class="container-fluid py-5">
    <div class="row mt-5">
        <div class="col mt-5 text-center display-3 fw-bolder" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
            SOLUCIONES
        </div>
    </div>
    <div class="row">
        <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-11 col-xs-11 col-11 py-2 mx-auto text-center">
            {{ $elements[0]->texto }}
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <div class="col px-0 mx-auto">
            <div class="row">
                <div class="soluciones-carrusel">
                    
                    @foreach ($soluciones as $solu)
                        <div class="col mx-auto py-2">
                            <div class="card px-3 border-0 position-relative card-soluciones">
                                <div class="card-soluciones_img border-0" style="
                                    background-image: url('{{ asset('img/photos/soluciones/'.$solu->imagen) }}');
                                "></div>
                                <div class="card border-0 position-absolute top-0 end-0 card-soluciones_img-icono p-4 text-center">
                                    <img src="{{ asset('img/photos/soluciones/'.$solu->icono) }}" alt="" class="img-fluid card-soluciones_img-icono__img mx-auto border-0 w-75">
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-11 py-4 mx-auto">
                                            <div class="row">
                                                <div class="col py-1 fs-3 fw-bolder">
                                                    {{ $solu->titulo }}
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-3 py-sm-3 py-xs-3 py-3" style="line-height: 1; text-align: justify;">
                                                    {{ $solu->descripcion }}
                                                </div>
                                                <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-3 py-sm-3 py-xs-3 py-3">
                                                    <a href="{{ route('front.contact') }}" class="btn btn-outline border border-white py-3 fs-5 w-100 text-white rounded-pill" style="text-decoration: none;">Contacto</a>
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
            <div class="row">
            
                <div class="col mx-auto position-relative text-center slider-dots-container">
                    <button class="slick-prev btn position-absolute start-0 mt-5"><img src="{{ asset('img/design/tienda/chev-le.png') }}" alt="" class="img-fluid"></button>    
                        <div class="slider-dots"></div>
                    <button class="slick-next btn position-absolute end-0 mt-5"><img src="{{ asset('img/design/tienda/chev-ri.png') }}" alt="" class="img-fluid"></button>
                </div>
            
            </div>
        </div>
    </div>
</div>

<section class="ps-5 pe-5">
    <div class="container-fluid py-5">
        <div class="row py-5">
            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto">
                <div class="row">
                    <div class="col">
                        <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements_home[1]->imagen) }}" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
            <div class="col-xxl-5 col-xl-5 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 mx-auto">
                <div class="row">
                    <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-9 col-sm-12 col-xs-12 col-12 py-4">
                        <img src="{{ asset('img/photos/imagenes_estaticas/'.$elements_home[0]->imagen) }}" alt="" class="img-fluid">
                    </div>
                </div>
                <div class="row">
                    <div class="col py-2 display-4 fw-bolder" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
                        {{ $elements_home[2]->texto }}
                    </div>
                </div>
                <div class="row">
                    <div class="col-xxl-10 col-xl-11 col-lg-12 col-md-12 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-auto mx-sm-auto mx-xs-auto mx-auto py-2 text-secondary" style="text-align: justify; line-height: 1;">
                        {{ $elements_home[3]->texto }}
                    </div>
                </div>
                <div class="row">
                   
                    <div class="col-xxl-6 col-xl-9 col-lg-12 col-md-6 py-4 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-auto mx-sm-auto mx-xs-auto mx-auto fs-3 py-2">
                        <a href="{{ route('front.tienda') }}" class="btn btn-outline fs-5 py-3 w-100 rounded-pill" style="border: 1px solid var(--azul-titulos); color: var(--azul-titulos); text-decoration: none;">   
                            Explorar Tienda
                        </a>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@section('jqueryExtra')
<script>
    $('.soluciones-carrusel').slick({
        dots: true,
        appendDots: $('.slider-dots-container'),
        prevArrow: '.slick-prev', // Selector del botón anterior
        nextArrow: '.slick-next', // Selector del botón siguiente
        centerMode: true,
        centerPadding: '16rem',
        slidesToShow: 1,
        responsive: [
        {
            breakpoint: 1300,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '6rem',
                slidesToShow: 1
            }
        },
        {
            breakpoint: 900,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '0rem',
                slidesToShow: 1
            }
        },
        {
            breakpoint: 600,
            settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '0rem',
                slidesToShow: 1
            }
        }
        ]
    });
</script>
@endsection
