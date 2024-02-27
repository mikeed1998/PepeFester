<?php

namespace App\Http\Controllers;

use App\Seccion;
use App\Elemento;
use App\services;
use App\herramientas;
use App\equipo;
use App\Configuracion;
use App\logoequipos;
use App\Carrusel;
use App\Categoria;
use App\Producto;
use App\colores;
use App\ProductosPhoto;
use App\PFCategoriaProducto;
use App\PFNecesidades;
use App\PFProducto;
use App\PFProyecto;
use App\PFPuntoVenta;
use App\PFSliderPrincipal;
use App\PFSolucion;
use App\PFGaleria;
use App\PFSubdistribuidor;
use App\PFPresentacionProducto;
use App\PFCategoriaPepes;
use App\PFSubcategoriaPepes;
use App\PFProductoPepes;
use App\PFProductoGaleriaPepes;
use App\PFProductoPresentacionPepes;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class SeccionController extends Controller
{

    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        

			$seccion = Seccion::all();
            
			foreach ($seccion as $sec) {
				$sec->elements = $sec->elementos()->count();  
			}
          
			return view('configs.secciones.index',compact('seccion'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    public function sucursalCreate(Request $request){

        $sucursal = new services;

        $sucursal->icono = $request->iframe;
        $sucursal->descripcion = $request->descripcion;

        if($sucursal->save()){
            \Toastr::success('Guardado');
            return redirect()->back();
        }else{
            \Toastr::error('Error al crear sucursal');
            return redirect()->back();
        }


    }

    public function sucursalDelete(Request $request){
        $id_suc = $request->id_suc;

        $sucursal = services::find($id_suc);

        if($sucursal->delete()){
            \Toastr::success('Eliminado');
            return redirect()->back();
        }else{
            \Toastr::error('Error al Eliminar sucursal');
            return redirect()->back();
        }

    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Seccion  $seccion
     * @return \Illuminate\Http\Response
     */
    public function show($seccion) {
        $config = Configuracion::all();
        $slider_principal = PFSliderPrincipal::all();
		$categorias = PFCategoriaPepes::all();
        $subcategorias = PFSubcategoriaPepes::all();
		$productos = PFProductoPepes::all();
		$soluciones = PFSolucion::all();
		$proyectos = PFProyecto::all();
        $puntos_venta = PFPuntoVenta::all();
        $subdistribuidores = PFSubdistribuidor::all();
        $necesidades = PFNecesidades::all();

            $seccion_nom = $seccion;
            
			$seccion = Seccion::where('slug',$seccion)->first();

            $elementos = Elemento::where('seccion',$seccion->id)->get();

            $elem_general = Elemento::all();

            // $proyectos = services::all();
            
			$elements = $seccion->elementos()->get();
            
            $ruta = 'configs.secciones.'.$seccion->seccion;
            
            if($seccion_nom == 'store'){
                // $productos = PFProductoPepes::paginate(8);
                $productos = PFProductoPepes::all();
                // $categorias = PFCategoriaPepes::paginate(4);
                $categorias = PFCategoriaPepes::all();
                // $subcategorias = PFSubcategoriaPepes::paginate(4);
                $subcategorias = PFSubcategoriaPepes::all();
                $colores = colores::all();
                foreach($productos as $p){
                    $prod_photos = ProductosPhoto::where('producto',$p->id)->get()->first();
                    if(!empty($prod_photos)){
                        $p->photo = $prod_photos->image;
                    }
                    
                }
                return view($ruta,compact('elements','seccion','productos','categorias', 'subcategorias', 'colores'));
            }

			return view($ruta,compact('elements','seccion','proyectos', 'slider_principal', 'categorias', 'subcategorias', 'productos', 'soluciones', 'productos', 'puntos_venta', 'subdistribuidores', 'necesidades', 'config', 'elem_general'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Seccion  $seccion
     * @return \Illuminate\Http\Response
     */
    public function edit(Seccion $seccion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Seccion  $seccion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $seccion) {

		if (empty($seccion)) {
			\Toastr::error('Error, intentalo mas tarde');
			return redirect()->back();
		}

		$seccion = Seccion::find($seccion);

		$file = $request->file('portada');
		$oldFile = $seccion->portada;
		$extension = $file->getClientOriginalExtension();
		$namefile = Str::random(30) . '.' . $extension;

		\Storage::disk('local')->put("/img/photos/seccions/" . $namefile, \File::get($file));

		\Storage::disk('local')->delete("/img/photos/seccions/" . $oldFile);

		$seccion->portada = $namefile;

		$seccion->save();
		\Toastr::success('Guardado');
		return redirect()->back();
    }
///////////////////////////////////////////////// GLOBALES SECCIONES //////////////////////////////////////////////
    public function imgPortadaGlobal(Request $request){

        if(!empty($request->file('archivo'))){

            if(empty($request->id_element)){
                \Toastr::error('Error al subir imagen');
                return redirect()->back();
            }

            $portada = Elemento::find($request->id_element);

            if(!empty($portada->imagen)){
                \Storage::disk('local')->delete("/img/photos/seccions/" .$portada->imagen);
            }


            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/seccions/" . $namefile, \File::get($file));

            $portada->imagen =  $namefile;

            if($portada->save()){
                \Toastr::success('Guardado');
                return redirect()->back();
            }else{
                \Toastr::error('Error al subir imagen');
                return redirect()->back();
            }

        }
    
    }

    public function image_input_ejemplo(Request $request){
        if(!empty($request->file('archivo'))){//si es diferente de vacio el archivo entonces

            if($request->tipo) {
                if($request->tipo == 'proyecto') {
                    $uproyecto = PFProyecto::find($request->id_elemento);
                    
                    $file_proyecto = $request->file('archivo');
                    $oldFilePoryectos = 'img/photos/proyectos/'.$uproyecto->imagen;
                    $extension_proyecto = $file_proyecto->getClientOriginalExtension();
                    $namefile_proyecto = Str::random(30) . '.' . $extension_proyecto;
    
                    \Storage::disk('local')->put("/img/photos/proyectos/" . $namefile_proyecto, \File::get($file_proyecto));
                    unlink($oldFilePoryectos);

                    $uproyecto->imagen = $namefile_proyecto;

                    $uproyecto->update();

                    \Toastr::success('Guardado');
                    return redirect()->back();
                } else if($request->tipo == 'producto') {
                    $uproducto = PFProductoPepes::find($request->id_elemento);
                    
                    $file_producto = $request->file('archivo');
                    $oldFileProducto = 'img/photos/pepe_productos/'.$uproducto->imagen;
                    $extension_producto = $file_producto->getClientOriginalExtension();
                    $namefile_producto = Str::random(30) . '.' . $extension_producto;
    
                    \Storage::disk('local')->put("/img/photos/pepe_productos/" . $namefile_producto, \File::get($file_producto));
                    unlink($oldFileProducto);

                    $uproducto->imagen = $namefile_producto;

                    $uproducto->update();

                    \Toastr::success('Guardado');
                    return redirect()->back();
                } else if($request->tipo == 'solucion_imagen') {
                    $usolucion = PFSolucion::find($request->id_elemento);
                    
                    $file_solucion = $request->file('archivo');
                    $oldFilesolucion = 'img/photos/soluciones/'.$usolucion->imagen;
                    $extension_solucion = $file_solucion->getClientOriginalExtension();
                    $namefile_solucion = Str::random(30) . '.' . $extension_solucion;
    
                    \Storage::disk('local')->put("/img/photos/soluciones/" . $namefile_solucion, \File::get($file_solucion));
                    unlink($oldFilesolucion);

                    $usolucion->imagen = $namefile_solucion;

                    $usolucion->update();

                    \Toastr::success('Guardado');
                    return redirect()->back();
                } else if($request->tipo == 'solucion_icono') {
                    $usolucion = PFSolucion::find($request->id_elemento);
                    
                    $file_solucion = $request->file('archivo');
                    $oldFilesolucion = 'img/photos/soluciones/'.$usolucion->icono;
                    $extension_solucion = $file_solucion->getClientOriginalExtension();
                    $namefile_solucion = Str::random(30) . '.' . $extension_solucion;
    
                    \Storage::disk('local')->put("/img/photos/soluciones/" . $namefile_solucion, \File::get($file_solucion));
                    unlink($oldFilesolucion);

                    $usolucion->icono = $namefile_solucion;

                    $usolucion->update();

                    \Toastr::success('Guardado');
                    return redirect()->back();
                } else if($request->tipo == 'categoria') {
                    $ucategoria = PFCategoriaPepes::find($request->id_elemento);
                    
                    $file_categoria = $request->file('archivo');
                    $oldFileCategoria = 'img/photos/pepe_categorias/'.$ucategoria->icono;
                    $extension_categoria = $file_categoria->getClientOriginalExtension();
                    $namefile_categoria = Str::random(30) . '.' . $extension_categoria;
    
                    \Storage::disk('local')->put("/img/photos/pepe_categorias/" . $namefile_categoria, \File::get($file_categoria));
                    unlink($oldFileCategoria);

                    $ucategoria->icono = $namefile_categoria;

                    $ucategoria->update();

                    \Toastr::success('Guardado');
                    return redirect()->back();
                } else if($request->tipo == 'subcategoria') {
                    $usubcategoria = PFSubCategoriaPepes::find($request->id_elemento);
                    
                    $file_categoria = $request->file('archivo');
                    $oldFileCategoria = 'img/photos/pepe_subcategorias/'.$usubcategoria->icono;
                    $extension_categoria = $file_categoria->getClientOriginalExtension();
                    $namefile_categoria = Str::random(30) . '.' . $extension_categoria;
    
                    \Storage::disk('local')->put("/img/photos/pepe_subcategorias/" . $namefile_categoria, \File::get($file_categoria));
                    unlink($oldFileCategoria);

                    $usubcategoria->icono = $namefile_categoria;

                    $usubcategoria->update();

                    \Toastr::success('Guardado');
                    return redirect()->back();
                } 
            } else {
                if(empty($request->id_elemento)){
                    \Toastr::error('Error al subir imagen');
                    return redirect()->back();
                }
    
                $elemento = Elemento::find($request->id_elemento);
    
                if(!empty($elemento->imagen)){
                    \Storage::disk('local')->delete("/img/photos/imagenes_estaticas/" .$elemento->imagen);
                }
    
                $file = $request->file('archivo');
                $extension = $file->getClientOriginalExtension();
                $namefile = Str::random(30) . '.' . $extension;
    
                \Storage::disk('local')->put("/img/photos/imagenes_estaticas/" . $namefile, \File::get($file));
    
                $elemento->imagen = $namefile;
    
                if($elemento->save()){
                    \Toastr::success('Guardado');
                    return redirect()->back();
                }else{
                    \Toastr::error('Error al subir imagen');
                    return redirect()->back();
                }
            }

           

        }else{
            \Toastr::error('Error al subir imagen');
            return redirect()->back();
        }
    }

    public function textglobalseccion(Request $request){
        if (empty($request->tabla)) {
            return response()->json(['success'=>false, 'mensaje'=>'Cambio Exitoso']);
        }

        $nameSpace = '\\App\\';
        $model = $nameSpace . ucfirst($request->tabla);

        $field = $request->campo;
        $val = $request->valor;

        $send = $model::find($request->id);
        $send->$field = $val;

        if ($send->save()) {
            if(isset($request->form)){
                \Toastr::success('Guardado');
                return redirect()->back();
            }else{
                return response()->json(['success'=>true, 'mensaje'=>'Cambio Exitoso']);
            }
            
        }else {
            if(isset($request->form)){
                \Toastr::error('Error al guardar');
                return redirect()->back();
            }else{
            return response()->json(['success'=>false, 'mensaje'=>'Error al actualizar']);
            }
        }
    }

    public function portadaseccion(Request $request){

        
        $carrusel =new Carrusel;

        // if(!empty($carrusel->imagen)){
        //     \Storage::disk('local')->delete("/img/photos/seccions/" .$carrusel->imagen);
        // }

        if(!empty($request->file('archivo'))){

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/sliders/" . $namefile, \File::get($file));

            $carrusel->image =  $namefile;
            $carrusel->save();

            \Toastr::success('Guardado');
            return redirect()->back();

        }

    }

    public function upelementimg(Request $request, $id){

        $element = Elemento::find($id);

        if(!empty($element->imagen)){
            \Storage::disk('local')->delete("/img/photos/seccions/" .$element->imagen);
        }

        if(!empty($request->file('archivo'))){

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/seccions/" . $namefile, \File::get($file));

            $element->imagen =  $namefile;
            $element->save();

            \Toastr::success('Guardado');
            return redirect()->back();

        }

    }

    public function deletesslider(Request $request){
        
        $carrusel = Carrusel::find($request->producto);

        
        \Storage::disk('local')->delete("/img/photos/sliders/" .$carrusel->image);

        if($carrusel->delete()){
            \Toastr::success('Eliminado exitoso');
            return redirect()->back();
        }else{
            \Toastr::error('Error al eliminar el servicio');
            return redirect()->back();
        }

    }

    public function textareaup(Request $request,$id){
        $element = Elemento::find($id);

        $element->texto = $request->textareaup;

        if($element->save()){
            \Toastr::success('Guardado');
            return redirect()->back();
        }else{
            \Toastr::error('Error al autualizar');
            return redirect()->back();
        }
    }


    ///////////////////////////////////////////////// funciones de categoria /////////////////////////////////////////////////

    public function newcat(Request $request){

        if(!empty($request->nuevo)){
            $categoria =new Categoria;

            $categoria->save();

            return redirect()->back();
        }

        return redirect()->back();

    }

    public function cattext(Request $request){

        $cat = Categoria::find($request->id);

        $campo = $request->campo;

        $cat->$campo = $request->valor;

        if($cat->save()){
            
            return response()->json(['success'=>true, 'mensaje'=>'Cambio Exitoso']);

        }else{
            
            return response()->json(['success'=>false, 'mensaje'=>'Error al actualizar']);
        }

    }

    public function catimg(Request $request, $id){

        
        
        $cat = Categoria::find($request->id);

        if(!empty($cat->image)){
            if($cat->image != 'categoría01.png'){
                \Storage::disk('local')->delete("/img/design/" .$cat->image);
            }
        }

        if(!empty($request->file('archivo'))){

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/design/" . $namefile, \File::get($file));

            $cat->image =  $namefile;
            $cat->save();

            \Toastr::success('Guardado');
            return redirect()->back();

        }

    }

    public function del_cat(Request $request){

        $cat = Categoria::find($request->id_cat);

        if($cat->image !='categoría01.png'){
            \Storage::disk('local')->delete("/img/design/" .$cat->image);
        }

        $productos = Producto::where('categoria',$request->id_cat)->get();

        foreach($productos as $prod){
            $prod->categoria = null;
        }

        if($cat->delete()){
            \Toastr::success('Eliminado exitoso');
            return redirect()->back();
        }else{
            \Toastr::error('Error al eliminar la cetegoria');
            return redirect()->back();
        }

    }

    ///////////////////////////////////////////////// end funciones de categoria /////////////////////////////////////////////////

    public function secciontexts(Request $request){

        $servicio = services::find($request->id);

        $campo = $request->campo;

        $servicio->$campo = $request->valor;

        if($servicio->save()){
            
            return response()->json(['success'=>true, 'mensaje'=>'Cambio Exitoso']);

        }else{
            
            return response()->json(['success'=>false, 'mensaje'=>'Error al actualizar']);
        }


        

    }

    public function agrserv(){
        $servicios =new services;

        if($servicios->save()){
            return response()->json(['success'=>true, 'mensaje'=>'Agregado']);
        }else{
            return response()->json(['success'=>false, 'mensaje'=>'Error al agregar']);
        }

        

    }

    public function agrher(){
        $herramienta =new herramientas;

        if($herramienta->save()){
            return response()->json(['success'=>true, 'mensaje'=>'Agregado']);
        }else{
            return response()->json(['success'=>false, 'mensaje'=>'Error al agregar']);
        }

        

    }

    public function checkb(Request $request){
        

        $servicio = services::find($request->id);

        $servicios_des = services::where('inicio',1)->count();

        if($servicios_des == 4){
            if($request->valor == 'true'){
                return response()->json(['success'=>false, 'mensaje'=>'No puedes agregar mas de 4 servicios destacados']);
            }
            
        }

        if($request->valor == "true"){
            $servicio->inicio = 1;
            if($servicio->save()){
                return response()->json(['success'=>true, 'mensaje'=>'Se agrego a destacados']);
            }else{
                return response()->json(['success'=>false, 'mensaje'=>'Error al agregar']);
            }
        }else{
            $servicio->inicio = 0;
            if($servicio->save()){
                return response()->json(['success'=>true, 'mensaje'=>'Se removio de destacados']);
            }else{
                return response()->json(['success'=>false, 'mensaje'=>'Error al remover']);
            }
        }



        
    }

    public function selecticon(Request $request){

        $servicio = services::find($request->id);

        $servicio->icono = 'icono'.$request->valor.'.png';

        if($servicio->save()){
            return response()->json(['success'=>true, 'mensaje'=>'Actualizacion de icono exitoso']);
        }else{
            return response()->json(['success'=>false, 'mensaje'=>'Error al actualizar icono']);
        }

        
    }

    public function portadaservicio(Request $request, $id){

        $servicio = services::find($id);

        if(!empty($servicio->image)){
            if($servicio->image !='servicio_1.png'){
                \Storage::disk('local')->delete("/img/photos/seccions/" .$servicio->image);
            }
        }

        if(!empty($request->file('image_service'))){

            $file = $request->file('image_service');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;
           

            \Storage::disk('local')->put("/img/photos/seccions/" . $namefile, \File::get($file));

            $servicio->image =  $namefile;
            $servicio->save();

            \Toastr::success('Guardado');
            return redirect()->back();

        }

    }

    public function deletes(Request $request){
        
        $servicio = services::find($request->elimins);

        if($servicio->image !='servicio_1.png'){
            \Storage::disk('local')->delete("/img/photos/seccions/" .$servicio->image);
        }

        if($servicio->delete()){
            \Toastr::success('Eliminado exitoso');
            return redirect()->back();
        }else{
            \Toastr::error('Error al eliminar el servicio');
            return redirect()->back();
        }

    }



    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Seccion  $seccion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Seccion $seccion)
    {
        //
    }


    /////////////////////////////////// funciones de categoria /////////////////////////////////// 



    public function agcategoria(Request $request){


        if(!empty($request->file('archivo'))){

            $categoria = new PFCategoriaProducto;
            $categoria->categoria = $request->nom_cat;

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/categorias/" . $namefile, \File::get($file));

            $categoria->icono = $namefile;

            if($categoria->save()){
                \Toastr::success('Categoria agregada');
            }else{
                \Toastr::error('Error al algregar categoria');
            }
        }else{
            \Toastr::error('Error al algregar categoria');
        }
        
        return redirect()->back();

    }

    public function elimCat(Request $request){

        $categoria = PFCategoriaProducto::find($request->id_cat);

        $producto_elim = PFProducto::all();
        $prodcuto_presentacion_elim = PFPresentacionProducto::all();
        $producto_galeria_elim = PFGaleria::all();

        $cont = 0;
        foreach($producto_elim as $pe) {
            $cont++;
        }

        $arr = [];
        if($cont != 0) {
            foreach($producto_elim as $pe) {
                if($pe->categoria == $categoria->id) {
                    foreach($prodcuto_presentacion_elim as $ppe) {
                        if($ppe->producto == $pe->id) {
                           $ppe->delete();
                        }
                    }
        
                    foreach($producto_galeria_elim as $gale) {
                        if($gale->producto == $pe->id) {
                            $aux_img = 'img/photos/productos/'.$gale->galeria;
                            unlink($aux_img);
                            $gale->delete();
                        }
                    }

                    $aux_pd = 'img/photos/productos/'.$pe->imagen;
                    unlink($aux_pd);
                    $pe->delete();
                } 
            }
        }

       
       $img_cat = 'img/photos/categorias/'.$categoria->icono;
       unlink($img_cat);
       $categoria->delete();

       \Toastr::success('categoria Eliminada');
        return redirect()->back();

    }

    /////////////////////////////////// funciones de categoria /////////////////////////////////// 

    /////////////////////////////////// funciones de prooyectos /////////////////////////////////// 

    public function agproyect(Request $request){


        if(!empty($request->file('archivo'))){
            $proyecto = new PFProyecto;
            $proyecto->titulo = $request->nom_proy;
            // $proyecto->descripcion = $request->desc_proy;

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/proyectos/" . $namefile, \File::get($file));

            $proyecto->imagen = $namefile;

            if($proyecto->save()){
                \Toastr::success('Proyecto agregada');
            }else{
                \Toastr::error('Error al algregar proyecto');
            }
        }else{
            \Toastr::error('Error al algregar proyecto');
        }
        
        return redirect()->back();

    }

    public function elimProy(Request $request){

        $proyecto = PFProyecto::find($request->id_proy);
        
        
        if(!empty($proyecto->imagen)){
            \Storage::disk('local')->delete("/img/photos/proyectos/" .$proyecto->imagen);
        }

        if($proyecto->delete()){
            \Toastr::success('Proyecto Eliminado');
        }else{
            \Toastr::error('Error al eliminar proyecto');
        }

        return redirect()->back();

    }
    
     public function elimSolu(Request $request){

        $solucion = PFSolucion::find($request->id_sol);
        
        
        if(!empty($solucion->imagen)){
            \Storage::disk('local')->delete("/img/photos/proyectos/" .$solucion->imagen);
        }

        if($solucion->delete()){
            \Toastr::success('Soluci��n Eliminada');
        }else{
            \Toastr::error('Error al eliminar la soluci��n');
        }

        return redirect()->back();

    }

    /////////////////////////////////// funciones de prooyectos /////////////////////////////////// 
    

    public function agsolucion(Request $request){
        $solucion = new PFSolucion;

        if(!empty($request->file('archivo'))){
            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/soluciones/" . $namefile, \File::get($file));

            $solucion->icono = $namefile;
        }

        if(!empty($request->file('archivo2'))){
            $file2 = $request->file('archivo2');
            $extension2 = $file2->getClientOriginalExtension();
            $namefile2 = Str::random(30) . '.' . $extension2;

            \Storage::disk('local')->put("/img/photos/soluciones/" . $namefile2, \File::get($file2));

            $solucion->imagen = $namefile2;
        }

        $solucion->titulo = $request->nom_sol;
        $solucion->descripcion = $request->desc_sol;

        if($solucion->save()){
            \Toastr::success('Solución agregada');
        }else{
            \Toastr::error('Error al algregar la solución');
        }
        
        return redirect()->back();

    }

 //   public function elimSolu(PFSolucion $id) {

   // }

    public function imgSider(Request $request) {
        $slider = new PFSliderPrincipal;
        // dd($request->archivo);
        if ($request->hasFile('archivo')) {
            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30).'.'.$extension;

            \Storage::disk('local')->put("/img/photos/slider_principal/".$namefile , \File::get($file));

            $slider->foto = $namefile;
        }

        $slider->save();
        \Toastr::success('Guardado');
        return redirect()->back();
    }


    public function delSide(PFSliderPrincipal $slider) {
        $foto = 'img/photos/slider_principal/'.$slider->foto;
        unlink($foto);

        $slider->delete();

        \Toastr::success('Slider eliminado');
        return redirect()->back();
    }

    public function agpunto(Request $request) {
        $punto = new PFPuntoVenta;

        $punto->direccion = $request->direccion;
        $punto->codigo_postal = $request->codigo_postal;
        $punto->ciudad = $request->municipio;
        $punto->estado = $request->estado;
        $punto->mapa = $request->mapa;
        
        $punto->save();

        \Toastr::success('Punto de venta agregado');
        return redirect()->back();
    }

    public function elimpunto(PFPuntoVenta $punto) {
        $punto->delete();

        \Toastr::success('Punto de venta eliminado');
        return redirect()->back();
    }

    public function agsubdistribuidor(Request $request) {
        $subd = new PFSubdistribuidor;

        $subd->beneficio = $request->beneficio;

        $subd->save();

        \Toastr::success('Beneficio agregado');
        return redirect()->back();
    }

    public function elimsubdistribuidor(PFSubdistribuidor $sub) {
        $sub->delete();

        \Toastr::success('Beneficio eliminado');
        return redirect()->back();
    }
    
    public function agnecesidades(Request $request) {
        $necesidad = new PFNecesidades;

        if($request->sector == 'hogar') {
            $necesidad->tipo_sector = 1;
        } else {
            $necesidad->tipo_sector = 2;
        }

        $necesidad->sector = $request->sector;
        $necesidad->necesidades = $request->necesidad;

        $necesidad->save();

        \Toastr::success('Necesidad agregada');
        return redirect()->back();
    }

    public function elimnecesidades(PFNecesidades $nec) {
        $nec->delete();
        
        \Toastr::success('Necesidad eliminada');
        return redirect()->back();
    }

    public function mapac(Request $request) {
        $aux = Elemento::all();
        $cadena = $request->mapita;

        if (preg_match('/src="([^"]+)"/', $cadena, $matches)) {
            $src_value = $matches[1];
        } else {
            \Toastr::error('iframe de google maps no valido');
            return redirect()->back();
        }

        // $cadena_sin_comillas = str_replace('"', '', $src_value);
        // dd($cadena_sin_comillas);

        $aux[37]->texto = $src_value;

        $aux[37]->save();

        \Toastr::success('Mapa Actualizado');
        return redirect()->back();
    } 


    public function agregarCategoria(Request $request) {
        if(!empty($request->file('archivo'))){
            $categoria = new PFCategoriaPepes;

            $categoria->categoria = $request->categoria;

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/pepe_categorias/" . $namefile, \File::get($file));

            $categoria->icono = $namefile;

            if($categoria->save()){
                \Toastr::success('Categoria creada');
            }else{
                \Toastr::error('Error al agregar la categoria');
            }
        }else{
            \Toastr::error('Error al agregar la categoria');
        }
        
        return redirect()->back();
    } 

	public function eliminarCategoria(Request $request) {
        $categoria = PFCategoriaPepes::find($request->id_categoria);
        $imgCategoria = "img/photos/pepe_categorias/".$categoria->icono;

        $subcategoria = PFSubcategoriaPepes::all();
        foreach($subcategoria as $subcat) {
            if($subcat->categoria == $categoria->id) {
                $imgSubCat = "img/photos/pepe_subcategorias/".$subcat->icono;

                $productos = PFProductoPepes::all();
                foreach($productos as $prod) {
                    if($prod->subcategoria == $subcat->id) {
                        $imgProd = "img/photos/pepe_productos/".$prod->imagen;
        
                        $galeria = PFProductoGaleriaPepes::all();
                        foreach($galeria as $gal) {
                            if($gal->producto == $prod->id) {
                                $imgGal = "img/photos/pepe_productos_galeria/".$gal->galeria;
                                unlink($imgGal);
                                $gal->delete();
                            }
                        }

                        $presentaciones = PFProductoPresentacionPepes::all();
                        foreach($presentaciones as $pres) {
                            if($pres->producto == $prod->id) {
                                $pres->delete();
                            }
                        }

                        unlink($imgProd);
                        $prod->delete();
                    }
                }
                unlink($imgSubCat);
                $subcat->delete();
            }
        }

        unlink($imgCategoria);
        $categoria->delete();

        \Toastr::success('La Categoria, sus subcategorias y sus productos relacionados han sido eliminados');
        return redirect()->route('config.seccion.show', ['slug' => 'store']);
    } 

	public function agregarSubcategoria(Request $request) {
        if(!empty($request->file('archivo'))){
            $subcategoria = new PFSubcategoriaPepes;

            $subcategoria->categoria = $request->categoria;
            $subcategoria->subcategoria = $request->subcategoria;

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/pepe_subcategorias/" . $namefile, \File::get($file));

            $subcategoria->icono = $namefile;

            if($subcategoria->save()){
                \Toastr::success('Subcategoria creada');
            }else{
                \Toastr::error('Error al agregar la subcategoria');
            }
        }else{
            \Toastr::error('Error al agregar la subcategoria');
        }
        
        return redirect()->back();
    }

	public function eliminarSubcategoria(Request $request) {
        $subcategoria = PFSubcategoriaPepes::find($request->id_subcategoria);
        $imgSubcategoria = "img/photos/pepe_subcategorias/".$subcategoria->icono;

        $productos = PFProductoPepes::all();
        foreach($productos as $prod) {
            if($prod->subcategoria == $subcategoria->id) {
                $imgProd = "img/photos/pepe_productos/".$prod->imagen;

                $galeria = PFProductoGaleriaPepes::all();
                foreach($galeria as $gal) {
                    if($gal->producto == $prod->id) {
                        $imgGal = "img/photos/pepe_productos_galeria/".$gal->galeria;
                        unlink($imgGal);
                        $gal->delete();
                    }
                }

                $presentaciones = PFProductoPresentacionPepes::all();
                foreach($presentaciones as $pres) {
                    if($pres->producto == $prod->id) {
                        $pres->delete();
                    }
                }

                unlink($imgProd);
                $prod->delete();
            }
        }

        unlink($imgSubcategoria);
        $subcategoria->delete();

        \Toastr::success('La Subcategoria y sus productos relacionados han sido eliminados');
        return redirect()->route('config.seccion.show', ['slug' => 'store']);
    }

	public function agregarProducto(Request $request) {
        if(!empty($request->file('archivo'))){
            $producto = new PFProductoPepes;

            $producto->subcategoria = $request->subcategoria;
            $producto->nombre = $request->nombre;
            $producto->precio = $request->precio;
            $producto->descripcion = $request->descripcion;
            $producto->existencias = $request->cantidad;
            $producto->presentacion = $request->presentacion;

            $producto->save();

            $presentaciones = $request->input('presentaciones');

            $producto_aux = $producto->id;

            $presentaciones_general = array_map(null, $presentaciones);

            // dd($presentaciones_general);

            foreach($presentaciones_general as $presentacion) {
                $presentaciones_producto = new PFProductoPresentacionPepes;

                $pres = $presentacion;

                $presentaciones_producto->producto = $producto_aux;
                $presentaciones_producto->presentacion = $pres;

                $presentaciones_producto->save();
            }

            $file = $request->file('archivo');
            $extension = $file->getClientOriginalExtension();
            $namefile = Str::random(30) . '.' . $extension;

            \Storage::disk('local')->put("/img/photos/pepe_productos/" . $namefile, \File::get($file));

            $producto->imagen = $namefile;

            if($producto->save()){
                \Toastr::success('Producto añanido exitosamente');
            }else{
                \Toastr::error('Error al agregar el producto');
            }
        }else{
            \Toastr::error('Error al agregar el producto');
        }
        
        return redirect()->back();
    } 

	public function eliminarProducto(Request $request) {
        $producto = PFProductoPepes::find($request->id_producto);
        $imgProducto = "img/photos/pepe_productos/".$producto->imagen;

        $galeria = PFProductoGaleriaPepes::all();
        foreach($galeria as $gal) {
            if($gal->producto == $producto->id) {
                $imgGal = "img/photos/pepe_productos_galeria/".$gal->galeria;
                unlink($imgGal);
                $gal->delete();
            }
        }

        $presentaciones = PFProductoPresentacionPepes::all();
        foreach($presentaciones as $pres) {
            if($pres->producto == $producto->id) {
                $pres->delete();
            }
        }

        unlink($imgProducto);
        $producto->delete();

        \Toastr::success('Producto eliminada');
        return redirect()->route('config.seccion.show', ['slug' => 'store']);
    }

	public function agregarProductoGaleria(Request $request) {
        $id_prod = $request->id_prod;
		if ($request->hasFile('uploadedfile')) {
			$images = $request->file('uploadedfile');
			foreach ($images as $image) {
				$galeria = new PFProductoGaleriaPepes;
				$extension = $image->getClientOriginalExtension();
				$namefile = Str::random(30) . '.' . $extension;
				\Storage::disk('local')->put("/img/photos/pepe_productos_galeria/" . $namefile, \File::get($image));
				
				$galeria->producto = $id_prod;
				$galeria->galeria = $namefile;

				$galeria->save();
			}
			\Toastr::success('Guardado');
			return redirect()->back();
		} else {
			\Toastr::error('Ningún archivo seleccionado.');
			return redirect()->back();
		}
    } 

	public function eliminarProductoGaleria(Request $request) {
        $galeria = PFProductoGaleriaPepes::find($request->id_galeria);
        $imgGaleria = "img/photos/pepe_productos_galeria/".$galeria->galeria;
        unlink($imgGaleria);
        $galeria->delete();

        \Toastr::success('Imágen eliminada');
        return redirect()->back();
    } 

}


