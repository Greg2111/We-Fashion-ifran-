@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Edit Product</h2>
            </div>
        </div>
    </div>

    @if ($errors->any())
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('products.update',$product->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

         <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Titre:</strong>
                    <input type="text" name="title" value="{{ $product->title }}" class="form-control" placeholder="Title">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>image:</strong>
                    {{-- <textarea class="form-control" style="height:150px" name="description" placeholder="Detail">{{ $download->imageTest }}</textarea> --}}
                    <input type="file" id="avatar" value="{{ $product->image }}" name="image" accept="image/png, image/jpeg">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>Description:</strong>
                    <input type="text" name="description" value="{{ $product->description }}" class="form-control" placeholder="Title">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>prix:</strong>
                    <input type="number" name="price" value="{{ $product->price }}" class="form-control" placeholder="Title">
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>taille:</strong>
                    <select name="size">
                        <option  value='XS' @if($product->size == 'XS'){{ 'selected' }} @endif >XS</option>
                        <option   value='S' @if($product->size == 'S'){{ 'selected' }} @endif >S</option>
                        <option  value='M' @if($product->size == 'M'){{ 'selected' }} @endif >M</option>
                        <option   value='L' @if($product->size == 'L'){{ 'selected' }} @endif >L</option>
                        <option   value='XL' @if($product->size == 'XL'){{ 'selected' }} @endif >XL</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>catégorie:</strong>
                    <select name="category">
                        <option  value='homme' @if($product->category == 'homme'){{ 'selected' }} @endif >homme</option>
                        <option   value='femme' @if($product->category == 'femme'){{ 'selected' }} @endif >femme</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>visibilité:</strong>
                    <select name="visibility">
                        <option  value='publié' @if($product->visibility == 'publié'){{ 'selected' }} @endif >publié</option>
                        <option   value='non publié' @if($product->visibility == 'non publié'){{ 'selected' }} @endif >non publié</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>statut:</strong>
                    <select name="status">
                        <option  value='standard' @if($product->status == 'standard'){{ 'selected' }} @endif >standard</option>
                        <option   value='en solde' @if($product->status == 'en solde'){{ 'selected' }} @endif >en solde</option>
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
        </div>

    </form>
@endsection


