<?php

namespace App\Http\Controllers;

use App\Models\sesiones;
use Illuminate\Http\Request;

class SesionesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
        $sesion = new sesiones();
        $sesion->fk_tiposesion = $request->fk_tiposesion;
        $sesion->fk_eventos = $request->fk_eventos;
        $sesion->titulo = $request->titulo;
        $sesion->orador = $request->orador;
        $sesion->fk_sala = $request->fk_saka;
        $sesion->costo = $request->costo;
        $sesion->horainicio = $request->horainicio;
        $sesion->horafin = $request->horafin;
        $sesion->descripcion = $request->descripcion;
        $sesion->save();
        return back()->with('respuesta','sesion Creada');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
