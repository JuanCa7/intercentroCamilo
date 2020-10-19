@extends('layouts.app')

@section('content')
<div class="container">
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

    <div class="row justify-content-center">
        <div class="col-md-6 display-4 text-uppercase d-flex justify-content-start">
            Eventos
        </div>
        <div class="col-md-6 d-flex justify-content-end">
            <button class="btn btn-outline-success" data-toggle="modal" data-target="#createEvento">Crear</button>
        </div>
        @include('eventos.create')
    </div>
    <hr>
    <div class="row justify-content-center">
        <?php $num=0;?>
        @forelse ($eventos as $item)
        <?php $num++;?>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">{{ $item->nombre }}</div>
                <div class="card-body">
                    <p>{{ $item->descripcion }}</p>
                    <p>Fecha:{{ $item->fecha }}</p>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-outline-info" data-toggle="modal" data-target="#editarEvento<?=$num?>">Editar</button>
                        </div>
                        <div class="col-md-6">
                            <a href="{{ route('detailEventos.show',$item->id) }}" class="btn btn-outline-warning">Ver mas...</a>
                        </div>
                    </div>
                </div>
                @include('eventos.editar')
            </div>
        </div>
        @empty

        @endforelse

    </div>
</div>
@endsection
