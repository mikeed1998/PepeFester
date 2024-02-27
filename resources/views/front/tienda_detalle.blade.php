@extends('layouts.front')

@section('title', 'Detalle')

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



    
    .slider-galeria {
        background: none !important;
    }

    .qty .count {
        color: white;
        display: inline-block;
        vertical-align: top;
        font-size: 25px;
        /* font-weight: 700; */
        line-height: 30px;
        padding: 0 2px;
        min-width: 2rem;
        text-align: center;
    }

    .qty .plus {
        cursor: pointer;
        display: inline-block;
        vertical-align: top;
        color: white;
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
        color: white;
        width: 1rem;
        height: 30px;
        font: 30px/1 Arial,sans-serif;
        text-align: center;
        border-radius: 50%;
        background-clip: padding-box;
    }

    div {
        text-align: center;
    }

    .minus:hover{
        background-color: #717fe0 !important;
    }

    .plus:hover{
        background-color: #717fe0 !important;
    }
    
    /*Prevent text selection*/
    span{
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
    }

    input{  
        border: 0;
        width: 2%;
    }

    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
    }

    input:disabled{
        background-color:white;
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
        .cilindro {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 50rem;
        }
        
        .contene {
            height: 50rem;
        }
        
        .prod-desc {
            height: 14.40rem;
            overflow: auto;
        }

        .img-producto {
            width: 100%;
            height: 28rem;
        }
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
        .cilindro {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 51.75rem;
        }

        .contene {
            height: 51.75rem;
        }
        
        
        .prod-desc {
            height: 12.30rem;
            overflow: auto;
        }

        .img-producto {
            width: 100%;
            height: 20rem;
        }
    }

    /* xl */
    @media (min-width: 1200px) and (max-width: 1400px) {
        .cilindro {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            height: 51.75rem;
        }

        .contene {
            height: 51.75rem;
        }
        
        
        .prod-desc {
            height: 12.30rem;
            overflow: auto;
        }

        .img-producto {
            width: 100%;
            height: 18rem;
        }
    }

    /* lg */
    @media (min-width: 992px) and (max-width: 1200px) {
        .cilindro {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .cilindro-cont {
            height: 44rem;
        }

        .foto {
            padding: 1rem;
        }

        .img-producto {
            width: 100%;
            height: 18rem;
        }
    }

    /* md */
    @media (min-width: 768px) and (max-width: 992px) {
        .cilindro {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .cilindro-cont {
            height: 44rem;
        }

        .foto {
            padding: 1rem;
        }

        .img-producto {
            width: 100%;
            height: 26rem;
        }

        
    }

    /* sm */
    @media (min-width: 576px) and (max-width: 768px) {
        .cilindro {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .cilindro-cont {
            height: 44rem;
        }

        .foto {
            padding: 0rem;
        }

        .img-producto {
            width: 100%;
            height: 26rem;
        }
    }

    /* xs */
    @media (min-width: 0px) and (max-width: 576px) {
        .cilindro {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .cilindro-cont {
            height: 44rem;
        }

        .foto {
            padding: 0rem;
        }

        .img-producto {
            width: 100%;
            height: 24rem;
        }
    }



</style>


<div class="container-fluid" >
    <div class="row" data-aos="zoom-in">
        <div class="col-xxl-6 col-xl-6 col-lg-9 col-sm-11 col-xs-11 col-12 mx-auto position-relative cilindro-cont" >
            <div class="col-12 position-absolute start-0 top-0 bottom-0 cilindro z-3" style="background-image: url('{{ asset('img/design/detalle/cilin.png') }}');"></div>
            <div class="col-8  position-absolute top-50 start-50 translate-middle z-0 ">
                <div class="row">
                    <div class="slider-galeria">
                        @if (!empty($gale))
                            @foreach ($gale as $gal)
                               
                                <div class="col bg-transparent">
                                    <img src="{{ asset('img/photos/pepe_subcategorias/'.$gal->foto) }}" alt="" class="img-fluid foto">   
                                </div>        
                               
                            @endforeach
                        @else
                            <div class="col">
                                <img src="{{ asset('img/photos/pepe_productos/'.$producto->imagen) }}" alt="" class="img-fluid foto">   
                            </div>       
                        @endif
                        
                    </div>
                </div>
                
                
            </div>
        </div>
   
        <div class="col-xxl-6 col-xl-6 col-lg-9 col-md-11 col-sm-11 col-xs-11 col-12 mx-auto py-5 text-white contene" style="background-color: #005496;">
<form action="{{ route('addCard') }}" method="POST">
    @csrf
    <input type="hidden" name="id_prod" value="{{ $producto->id }}">
    <input type="hidden" name="tipo_tienda" value="detalle">
            <div class="row">
                <div class="col fs-1 text-start fw-bolder">
                    {{ $producto->nombre }}
                </div>
            </div>
            <div class="row">
                <div class="col pb-3 fs-1 text-start fw-light">
                    @foreach ($categorias as $cat)
                        @if ($cat->id == $producto->categoria)
                            {{ $cat->categoria }}
                        @endif
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-11 col-sm-12 col-xs-12 col-12 border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12 py-4 text-white-50 text-start prod-desc" style="text-align: justify; line-height: 1.2;">
                    {!! $producto->descripcion !!} 
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12 border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col py-1 fs-2">
                    <div class="row">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-6 col-6 mt-2 text-start">
                            Cantidad
                        </div>
                        <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6">
                            <div class="qty mt-3">
                                <span class="minus bg-transparent">-</span>
                                <input type="number" name="cantidad" class="count bg-transparent {{ ($producto->existencias <= 0) ? 'text-danger' : 'text-white' }}" value="1" max="{{ $producto->existencias }}" {{ ($producto->existencias <= 0) ? 'disabled' : '' }}> 
                                <span class="plus bg-trasparent">+</span>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12  border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col py-2 fs-2">
                    <div class="row">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-6 col-6 fw-light mt-2 text-start">
                            Presentación
                        </div>
                        <div class="col-2"></div>
                        <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6">
                            <select class="form-control form-select arrows select-arrow-inverted select-arrow-color-white border-0" name="presentacion" style="background-color: #005496; color: white; font-size: 1.6rem;">
                                @foreach ($producto_p as $pp)
                                    @if ($pp->producto == $producto->id)
                                        <option style="background-color: var(--azul-titulos); color: white; font-size: 1.6rem;" value="{{ $pp->id }}" {{ $pp->presentacion == $producto->presentacion ? 'selected' : '' }}>{{ $pp->presentacion }}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12  border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-12 col-sm-11 col-xs-11 col-11 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-auto mx-xs-auto mx-auto py-5">
                    <div class="row">
                        
                        @if ($producto->existencias <= 0)
                            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-0 py-sm-2 py-xs-2 py-2">
                                <a href="#/" class="btn btn-outline w-100 text-white rounded-pill fs-5 py-4 fw-light" style="text-decoration: none; border: 2px dashed red;" disabled>Sin stock disponible</a>
                            </div>
                        @else
                            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-0 py-sm-2 py-xs-2 py-2">
                                <button type="submit" class="btn btn-outline w-100 border-white text-white rounded-pill fs-5 py-4 fw-light" style="text-decoration: none;">Agregar al carrito</button>
                            </div>
                            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-0 py-sm-2 py-xs-2 py-2">
                                <input type="submit" name="comprar" class="btn btn-outline w-100 border-white text-white rounded-pill fs-5 py-4 fw-light" style="text-decoration: none;" value="Comprar ahora">
                            </div>
                        @endif
                        
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col py-1 fs-1 fw-bolder text-white text-start">
                    ${{ $producto->precio }}
                </div>
            </div>
</form>
        </div>    
    </div>
</div>







{{-- 


<div class="container-fluid mt-3" style="background-color: var(--fondo-tienda);">
    <div class="row" style="background-color: var(--header-btn-bg-color);">
        <div class="col-xxl-6 col-xl-6 col-lg-9 col-sm-11 col-xs-11 col-11 mx-auto position-relative img-cilindro" style="background-image: url('{{ asset('img/design/detalle/fondo_cilindro.png') }}');">
            <div class="col-8  position-absolute top-50 start-50 translate-middle">
                <div class="row">
                    <div class="slider-galeria">
                        @if (!empty($gale))
                            @foreach ($gale as $gal)
                               
                                <div class="col bg-transparent">
                                    <img src="{{ asset('img/photos/productos/'.$gal->galeria) }}" alt="" class="img-fluid foto">   
                                </div>        
                               
                            @endforeach
                        @else
                            <div class="col">
                                <img src="{{ asset('img/photos/productos/'.$producto->imagen) }}" alt="" class="img-fluid foto">   
                            </div>       
                        @endif
                        
                    </div>
                </div>
                
                
            </div>
        </div>
   
        <div class="col-xxl-6 col-xl-6 col-lg-9 col-md-11 col-sm-11 col-xs-11 col-11 mx-auto py-5 text-white">
<form action="{{ route('addCard') }}" method="POST">
    @csrf
    <input type="hidden" name="id_prod" value="{{ $producto->id }}">
    <input type="hidden" name="tipo_tienda" value="detalle">
            <div class="row">
                <div class="col fs-1 text-start fw-bolder">
                    {{ $producto->nombre }}
                </div>
            </div>
            <div class="row">
                <div class="col pb-3 fs-1 text-start fw-light">
                    @foreach ($categorias as $cat)
                        @if ($cat->id == $producto->categoria)
                            {{ $cat->categoria }}
                        @endif
                    @endforeach
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-11 col-sm-12 col-xs-12 col-12 border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12 py-4 text-white-50 text-start" style="text-align: justify; line-height: 1.2;">
                    {{ $producto->descripcion }}
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12 border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col py-1 fs-2">
                    <div class="row">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-6 col-6 mt-2 text-start">
                            Cantidad
                        </div>
                        <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6">
                            <div class="qty mt-3">
                                <span class="minus bg-transparent">-</span>
                                <input type="number" name="cantidad" class="count bg-transparent {{ ($producto->existencias <= 0) ? 'text-danger' : 'text-white' }}" value="1" max="{{ $producto->existencias }}" {{ ($producto->existencias <= 0) ? 'disabled' : '' }}> 
                                <span class="plus bg-trasparent">+</span>
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12  border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col py-2 fs-2">
                    <div class="row">
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-3 col-sm-6 col-xs-6 col-6 fw-light mt-2 text-start">
                            Presentación
                        </div>
                        <div class="col-2"></div>
                        <div class="col-xxl-3 col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-6 col-6">
                            <select class="form-control form-select arrows select-arrow-inverted select-arrow-color-white border-0" name="presentacion" style="background-color: var(--azul-titulos); color: white; font-size: 1.6rem;">
                                @foreach ($producto_p as $pp)
                                    @if ($pp->producto == $producto->id)
                                        <option style="background-color: var(--azul-titulos); color: white; font-size: 1.6rem;" value="{{ $pp->id }}" {{ $pp->presentacion == $producto->presentacion ? 'selected' : '' }}>{{ $pp->presentacion }}</option>
                                    @endif
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-12 col-xs-12 col-12  border-top border-dark"></div>
            </div>
            <div class="row">
                <div class="col-xxl-10 col-xl-10 col-lg-10 col-md-12 col-sm-11 col-xs-11 col-11 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-auto mx-xs-auto mx-auto py-5">
                    <div class="row">
                        
                        @if ($producto->existencias <= 0)
                            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-0 py-sm-2 py-xs-2 py-2">
                                <a href="#/" class="btn btn-outline w-100 text-white rounded-pill fs-5 py-4 fw-light" style="text-decoration: none; border: 2px dashed red;" disabled>Sin stock disponible</a>
                            </div>
                        @else
                            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-0 py-sm-2 py-xs-2 py-2">
                                <button type="submit" class="btn btn-outline w-100 border-white text-white rounded-pill fs-5 py-4 fw-light" style="text-decoration: none;">Agregar al carrito</button>
                            </div>
                            <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 mx-auto py-xxl-0 py-xl-0 py-lg-0 py-md-0 py-sm-2 py-xs-2 py-2">
                                <input type="submit" name="comprar" class="btn btn-outline w-100 border-white text-white rounded-pill fs-5 py-4 fw-light" style="text-decoration: none;" value="Comprar ahora">
                            </div>
                        @endif
                        
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col py-3 fs-1 fw-bolder text-white text-start">
                    ${{ $producto->precio }}
                </div>
            </div>
</form>
        </div>    
    </div>
</div> --}}

<div class="container-fluid py-5 bg-white">
    <div class="row">
        <div class="col py-3 display-3 fw-bolder text-center" style="color: var(--azul-titulos); font-family:'Neusharp Bold';">
            PRODUCTOS SIMILARES
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-xxl-12 col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12 col-12 mx-auto">
            <div class="row">
                <div class="productos-relacionados">
                
                @foreach ($productos as $prod)
                
                @if ($prod->subcategoria == $producto->subcategoria and $prod->id != $producto->id)
                <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-6 col-sm-9 col-xs-12 col-12 mt-5 ps-3 pe-3 mx-auto mb-5 categoria categoria-{{ $prod->categoria }}">
                    <div class="card carta bg-white" style="border-color: var(--azul-titulos); border-top-left-radius: 32px; border-bottom-left-radius: 32px; border-top-right-radius: 32px; border-bottom-right-radius: 0;">
                        <img src="{{ asset('img/photos/pepe_productos/'.$prod->imagen) }}" alt="" class="img-fluid m-0 img-producto" style="border-top-left-radius: 32px; border-bottom-left-radius: 0; border-top-right-radius: 32px;">
                        <div class="card-body py-0 m-0">
                            <div class="row">
                                <div class="col text-center fs-5 fw-bolder">
                                    {{ $prod->nombre }}
                                </div>
                            </div>
                            <div class="row">
                                <div class="col text-center text-secondary fs-5">
                                    @foreach ($subcategorias as $sc)
                                        @if ($prod->subcategoria == $sc->id)
                                            {{ $sc->subcategoria }}
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
    </div>
</div>


@endsection

@section('jqueryExtra')
{{-- <script>
    $(document).ready(function(){
$('.count').prop('disabled', true);
   $(document).on('click','.plus',function(){
    $('.count').val(parseInt($('.count').val()) + 1 );
});
$(document).on('click','.minus',function(){
    $('.count').val(parseInt($('.count').val()) - 1 );
        if ($('.count').val() == 0) {
            $('.count').val(1);
        }
    });
});
</script> --}}
<script>
$('.productos-relacionados').slick({
autoplay: true,
dots: false,
infinite: true,
speed: 300,
nextArrow: false,
prevArrow: false,
slidesToShow: 4,
slidesToScroll: 4,
responsive: [
{
    breakpoint: 1300,
    settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: false,
        dots: false
    }
},
{
    breakpoint: 900,
    settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
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
</script>
<script>
    $('.slider-galeria').slick({
        autoplay: true,
  dots: false,
  infinite: false,
  speed: 100,
  slidesToShow: 1,
  slidesToScroll: 1,
  prevArrow: false,
  nextArrow: false,
  fade: true,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        autoplay: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: false,
        prevArrow: false,
        nextArrow: false,
        dots: false
      }
    },
    {
      breakpoint: 600,
      settings: {
        autoplay: true,
        slidesToShow: 1,
        slidesToScroll: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        autoplay: true,
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
});
</script>
<script>
    $(document).ready(function(){
        $('.count').prop('disabled', true);

        $(document).on('click','.plus',function(){
            if ($('.count').val() < {{ $producto->existencias }}) {
                $('.count').val(parseInt($('.count').val()) + 1 );
            } else {
                // También puedes mostrar un mensaje de error o hacer algo si se supera la cantidad máxima.
            }
        });

        $(document).on('click','.minus',function(){
            if ($('.count').val() > 1) {
                $('.count').val(parseInt($('.count').val()) - 1 );
            } else {
                // También puedes mostrar un mensaje de error o hacer algo si la cantidad es menor que 1.
            }
        });

        // Habilitar el campo de cantidad antes de enviar el formulario
        $('form').submit(function(){
            $('.count').prop('disabled', false);
        });
    });
</script>
@endsection
