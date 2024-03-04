@extends('layouts.admin')

@section('title', 'Contacto')

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

    .form-control::placeholder {
        color: var(--azul-titulos);
        font-weight: 400;

    }

    @media(min-width: 1800px) {
        .top-form {
            margin-top: 3rem;
            background-color: var(--azul-titulos); 
            border-top-left-radius: 6rem; 
            border-bottom-left-radius: 6rem;
        }

        .redondeo-form {
            border-radius: 1rem;
            padding: 0.7rem;
        }

        .fondo-contacto {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 54rem;
        }

        .info-col {
            border-left: 2px solid red;
            color: var(--azul-titulos);
        }

        .mapa {
            width: 100%;
            height: 44rem;
        }
    }

    /* xxl */
    @media (min-width: 1400px) and (max-width: 1799px) {
        .top-form {
            margin-top: 3rem;
            background-color: var(--azul-titulos); 
            border-top-left-radius: 6rem; 
            border-bottom-left-radius: 6rem;
        }

        .redondeo-form {
            border-radius: 1rem;
            padding: 0.7rem;
        }

        .fondo-contacto {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 54rem;
        }

        .info-col {
            border-left: 2px solid red;
            color: var(--azul-titulos);
        }

        .mapa {
            width: 100%;
            height: 38rem;
        }
    }

    /* xl */
    @media (min-width: 1200px) and (max-width: 1400px) {
        .top-form {
            margin-top: 3rem;
            background-color: var(--azul-titulos); 
            border-top-left-radius: 6rem; 
            border-bottom-left-radius: 6rem;
        }

        .redondeo-form {
            border-radius: 1rem;
            padding: 0.7rem;
        }

        .fondo-contacto {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 54rem;
        }

        .info-col {
            border-left: 2px solid red;
            color: var(--azul-titulos);
        }

        .mapa {
            width: 100%;
            height: 38rem;
        }
    }

    /* lg */
    @media (min-width: 992px) and (max-width: 1200px) {
        .top-form {
            margin-top: 3rem;
            background-color: var(--azul-titulos); 
            border-top-left-radius: 6rem; 
            border-bottom-left-radius: 6rem;
        }

        .redondeo-form {
            border-radius: 1rem;
            padding: 0.7rem;
        }

        .fondo-contacto {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 54rem;
        }

        .info-col {
            border-left: 2px solid red;
            color: var(--azul-titulos);
        }

        .mapa {
            width: 100%;
            height: 38rem;
        }
    }

    /* md */
    @media (min-width: 768px) and (max-width: 992px) {
        .top-form {
            margin-top: 3rem;
            background-color: var(--azul-titulos); 
            border-top-left-radius: 6rem; 
            border-bottom-left-radius: 6rem;
        }

        .redondeo-form {
            border-radius: 1rem;
            padding: 0.7rem;
        }

        .fondo-contacto {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 54rem;
        }

        .info-col {
            border-left: 2px solid red;
            border-right: 2px solid red;
            color: var(--azul-titulos);
            margin-top: 0.5rem;
            margin-bottom: 0.5rem;
        }

        .mapa {
            width: 100%;
            height: 38rem;
        }
    }

    /* sm */
    @media (min-width: 576px) and (max-width: 768px) {
        .top-form {
            margin-top: 3rem;
            background-color: var(--azul-titulos); 
            border-top-left-radius: 0rem; 
            border-bottom-left-radius: 0rem;
        }

        .redondeo-form {
            border-radius: 1rem;
            padding: 0.7rem;
        }

        .fondo-contacto {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 54rem;
        }

        .info-col {
            border-left: 2px solid red;
            border-right: 2px solid red;
            color: var(--azul-titulos);
            margin-top: 0.5rem;
            margin-bottom: 0.5rem;
        }

        .mapa {
            width: 100%;
            height: 38rem;
        }
    }

    /* xs */
    @media (min-width: 0px) and (max-width: 576px) {
        .top-form {
            margin-top: 3rem;
            background-color: var(--azul-titulos); 
            border-top-left-radius: 0rem; 
            border-bottom-left-radius: 0rem;
        }

        .redondeo-form {
            border-radius: 1rem;
            padding: 0.7rem;
        }

        .fondo-contacto {
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            width: 100%;
            height: 54rem;
        }

        .info-col {
            border-left: 2px solid red;
            border-right: 2px solid red;
            color: var(--azul-titulos);
            margin-top: 0.5rem;
            margin-bottom: 0.5rem;
        }

        .mapa {
            width: 100%;
            height: 38rem;
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
                    opacity: 0%;
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
        <div class="col position-relative fondo-contacto" style="
            background-image: url('{{ asset('img/photos/imagenes_estaticas/'.$elements[7]->imagen) }}');
        ">
        <div class="col-12 position-absolute top-0 start-0">
            <form id="form_aux" action="image_input_ejemplo" method="POST" class="file-upload px-auto col-7" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id_elemento" value="{{ $elements[7]->id }}">
                <input id="img_aux" class="m-0 p-0" type="file" name="archivo">
                <label class="col-12 m-0 px-2 d-flex justify-content-center align-items-center" for="img_aux" style=" height: 100%; opacity: 100%; border-radius: 20px;">Seleccionar archivo</label>
            </form>
            <script>
                $('#img_aux').change(function(e) {
                    $('#form_aux').trigger('submit');
                });
            </script>
        </div>
            <div class="col-xxl-8 col-xl-8 col-lg-8 col-md-9 col-sm-12 col-xs-12 col-12 top-form position-absolute top-0 bottom-0 end-0">
                <form action="">
                    <div class="row">
                        <div class="col-10 py-5 mx-auto">
                            <div class="row m-3">
                                <div class="col px-0 text-start display-4 text-white fw-bolder" style="font-family:'Neusharp Bold';">
                                    CONTACTO
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-12 col-sm-12 col-xs-12 col-12 mx-xxl-0 mx-xl-0 mx-lg-0 mx-md-0 mx-sm-auto mx-xs-auto mx-auto py-1 ps-4 text-start text-light" style="line-height: 1;">
									<textarea name="" id="" cols="30" rows="2" class="form-control bg-transparent text-white editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Elemento" data-campo="texto" data-id="{{ $elements[0]->id }}">{{ $elements[0]->texto }}</textarea>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col py-2">
                                    <input type="text" class="form-control redondeo-form" placeholder="Nombre" disabled>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col py-2">
                                    <input type="text" class="form-control redondeo-form" placeholder="Empresa" disabled>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col py-2">
                                    <input type="email" class="form-control redondeo-form" placeholder="Email" disabled>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col py-2">
                                    <input type="number" class="form-control redondeo-form" placeholder="Whatsapp" disabled>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col py-2">
                                    <input type="text" class="form-control redondeo-form" placeholder="Asunto" disabled>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col py-2">
                                    <textarea name="" id="" cols="30" rows="4" class="form-control redondeo-form" placeholder="Mensaje" disabled></textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xxl-6 col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 col-12 py-2">
                                    <input type="submit" class="btn btn-outline py-3 fs-5 w-100 border border-white rounded-pill text-white" value="Enviar Mensaje" disabled>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col py-3" style="background-color: var(--fondo);">
            <div class="row">
                <div class="col-xxl-9 col-xl-9 col-lg-9 col-md-11 col-sm-11 col-xs-11 col-11 mx-auto">
                    <div class="row">
                        <div class="col-xxl-2 col-xl-2 col-lg-1"></div>
                        <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-12 col-sm-12 col-xs-12 col-12 ps-3 py-3 info-col">
                            <input type="text" class="form-control bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Configuracion" data-campo="destinatario" data-id="{{ $config[0]->id }}" value="{{ $config[0]->destinatario }}">
							<input type="text" class="form-control bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Configuracion" data-campo="destinatario2" data-id="{{ $config[0]->id }}" value="{{ $config[0]->destinatario2 }}">
                        </div>
                        <div class="col-xxl-4 col-xl-4 col-lg-4 col-md-12 col-sm-12 col-xs-12 col-12 info-col">
                            {{-- <p class="p-0 m-0">Avenida Lapizlazuli 2074 int3</p>
                            <p class="p-0 m-0">Residencial Victoria, Guadalajara, Jalisco, México</p> --}}
							<textarea name="" id="" cols="30" rows="4" class="form-control bg-transparent editar_text_seccion_global editarajax" data-url="{{route('config.seccion.textglobalseccion')}}" data-table="Configuracion" data-campo="direccion" data-id="{{ $config[0]->id }}">{{ $config[0]->direccion }}</textarea>
                        </div>
                        <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 col-12 py-3 info-col">
                            <input type="text" class="form-control bg-transparent editar_text_seccion_global editarajax" data-table="Configuracion" data-url="{{route('config.seccion.textglobalseccion')}}" data-campo="telefono" data-id="{{ $config[0]->id }}" value="{{ $config[0]->telefono }}">
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-xl-3 col-lg-3 col-md-11 col-sm-11 col-xs-11 col-11 mx-auto py-xxl-1 py-xl-1 py-lg-1 py-md-3 py-sm-3 py-xs-3 py-3">
                    <div class="row">
                        <div class="col">
                            <div class="row">
                                <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-1 col-sm-1 col-xs-2 col-2 px-0">
                                    <a href="#/" class="disabled">
                                        <img src="{{ asset('img/design/footer/wp.png') }}" alt="" class="img-fluid w-75">
                                    </a>
                                </div>
                                <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-1 col-sm-1 col-xs-2 col-2 px-0">
                                    <a href="#/" class="disabled">
                                        <img src="{{ asset('img/design/footer/fb.png') }}" alt="" class="img-fluid w-75">
                                    </a>
                                </div>
                                <div class="col-xxl-2 col-xl-2 col-lg-2 col-md-1 col-sm-1 col-xs-2 col-2 px-0">
                                    <a href="#/" class="disabled">
                                        <img src="{{ asset('img/design/footer/ins.png') }}" alt="" class="img-fluid w-75">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row py-5">
        <div class="col px-0">
            <form action="{{ route('config.seccion.mapac') }}" method="POST">
                @csrf
                <div class="form-group row">
                    <div class="col-9 mx-auto text-center">
                        <input type="text" name="mapita" class="form-control" placeholder="{{ $elements[8]->texto }}">
                        <input type="submit" class="btn btn-outline bg-info" value="Actualizar mapa">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col px-0">
            <iframe src="{{ $elements[8]->texto }}" class="mapa" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
</div>


@endsection

@section('jqueryExtra')
<script>
    
</script>
@endsection
