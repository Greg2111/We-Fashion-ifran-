
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
            <h2 class="mb-4">Bienvenue sur WE FASHION</h2>
            <p>Decouvrez notre game variée de vêtements</p>
          </div>
        </div>
    	</div>
    	<div class="container">

    		<div class="row">
                @foreach ($products as $product)
    			<div class="col-sm-12 col-md-6 col-lg-3 ftco-animate d-flex">
    				<div class="product d-flex flex-column">
    					<a href="#" class="{{route('products.show', $product->id )}}"><img class="img-fluid" src="{{ $product->image }}" alt="Colorlib Template">
    						<div class="overlay"></div>
    					</a>
    					<div class="text py-3 pb-4 px-3">
    						<div class="d-flex">
                                <div class="cat">
                                    <span>{{ $product->category }}</span>
                                </div>
                                <div class="cat">
                                    <span>{{ $product->size }}</span>
                                </div>
                                <div class="cat">
                                    <span>{{ $product->status }}</span>
                                </div>
	    					</div>
    						<h3><a href="#">{{ $product->title }}</a></h3>
    						<div class="pricing">
	    						<p class="price"><span>{{ $product->getPrice() }}</span></p>
	    					</div>
	    					<p class="bottom-area d-flex px-3">
    							<a href="{{route('products.show', $product->id )}}" class="buy-now text-center py-2">Buy now</a>
    						</p>
    					</div>
    				</div>
    			</div>
    		@endforeach
            {{$products->links()}}
        </div>

    	</div>
    </section>



    @endsection
  </body>
</html>
