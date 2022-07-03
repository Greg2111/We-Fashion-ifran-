
@extends('layouts.app')


<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Acceuil</title>




    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <!-- Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
    <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#7952b3">
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>
  <body>
    @if (session('success'))
            <div class="alert alert-success">
                {{session('success')}}
            </div>
        @endif
    @section('content')
      <section class="ftco-section bg-light">
    	<div class="container">
				<div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-12 heading-section text-center ftco-animate">
            <h2 class="mb-4">Section Homme</h2>
            <p>Decouvrez notre game variée de vêtements pour Monsieur</p>
          </div>
        </div>
    	</div>
    	<div class="container">

    		<div class="row">
                @foreach ($hommes as $homme)
                    <div class="col-sm-12 col-md-6 col-lg-3 ftco-animate d-flex">
                        <div class="product d-flex flex-column">
                            <a href="#" class="{{route('products.show', $homme->id )}}"><img class="img-fluid" src="{{ $homme->image }}" alt="Colorlib Template">
                                <div class="overlay"></div>
                            </a>
                            <div class="text py-3 pb-4 px-3">
                                <div class="d-flex">
                                    <div class="cat">
                                        <span>{{ $homme->category }}</span>
                                    </div>
                                    <div class="cat">
                                        <span>{{ $homme->size }}</span>
                                    </div>
                                    <div class="cat">
                                        <span>{{ $homme->status }}</span>
                                    </div>
                                </div>
                                <h3><a href="#">{{ $homme->title }}</a></h3>
                                <div class="pricing">
                                    <p class="price"><span>{{ $homme->getPrice() }}</span></p>
                                </div>
                                <p class="bottom-area d-flex px-3">
                                    <a href="{{route('products.show', $homme->id )}}" class="buy-now text-center py-2">Buy now</a>
                                </p>
                            </div>
                        </div>
                    </div>
    		    @endforeach
                {{$hommes->links()}}
            </div>

    	</div>
    </section>



    @endsection
  </body>
</html>
