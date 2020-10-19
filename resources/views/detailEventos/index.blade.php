@extends('layouts.app')

@section('content')
@if ($errors->any())
        <div class="alert alert-danger alert-dismissible fade show btn-block" role="alert">
            <h4>
                {{ $errors }}
            </h4>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <strong></strong>
        </div>
    @endif
    @if ( session('respuesta'))
    <div class="row">
        <div class="alert alert-warning alert-dismissible fade show btn-block" role="alert">
            <h4>{{ session('respuesta') }}</h4>
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
    </div>
    @endif
    <section class="container">
        <div class="row">
            <div class="col-md-6 d-flex justify-content-center">
                <h4 class="display-3">
                    {{ $evento->nombre }}
                </h4>
            </div>
            <div class="col-md-6">
                <p class="text-center">
                    {{ $evento->descripcion }}
                </p>
                <span>
                    <b>{{ $evento->fecha }}</b>
                </span>
            </div>
        </div>
    </section>
    <hr>
    <section class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="display-4">
                    Voletos
                </h2>
            </div>
            <div class="col-md-6 d-flex justify-content-end">
                <button type="submit" class="btn btn-outline-success" data-toggle="modal" data-target="#createVoleto">Crear Voleto</button>
            </div>
            @include('voletos.create')
        </div>
        <div class="row">

                @foreach ($voletos as $item)
                <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        {{ $item->nombre }}
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Costo {{ number_format($item->costo) }}</h4>
                        <p class="card-text">Fecha Cierre: <b>{{ $item->fechacierre }}</b></p>
                    </div>
                </div>
            </div>
                @endforeach

        </div>
    </section>
    <hr>
    <section class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="display-4">
                    Sesiones
                </h2>
            </div>
            <div class="col-md-6 d-flex justify-content-end">
                <button type="submit" class="btn btn-outline-success"  data-toggle="modal" data-target="#createSesion">Crear sesion</button>
            </div>
            </div>
            @include('sesiones.create')
    </section>
    <hr>
    <section class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="display-4">
                    Canales
                </h2>
            </div>
            <div class="col-md-6 d-flex justify-content-end">
                <button type="submit" class="btn btn-outline-success">Crear Canal</button>
            </div>
            </div>
        <div class="row">
            <table class="table">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Nombre</th>
                        <th>Espacio</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td scope="row">1</td>
                        <td>Principal</td>
                        <td>500 Personal</td>
                    </tr>
                    <tr>
                        <td scope="row">2</td>
                        <td>A lado</td>
                        <td>20 Personal</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
    <hr>
    <section class="container">
        <div class="row">
            <div class="col-md-6">
                <h2 class="display-4">
                    Salas
                </h2>
            </div>
            <div class="col-md-6 d-flex justify-content-end">
                <button type="submit" class="btn btn-outline-success">Crear Sala</button>
            </div>
            </div>
            <div class="row">
                <table class="table">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Nombre</th>
                            <th>Espacio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td scope="row">1</td>
                            <td>Principal</td>
                            <td>500 Personal</td>
                        </tr>
                        <tr>
                            <td scope="row">2</td>
                            <td>A lado</td>
                            <td>20 Personal</td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </section>
@endsection
