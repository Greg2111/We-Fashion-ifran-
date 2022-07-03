@extends('layouts.app')
<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Blog Template · Bootstrap v5.1</title>




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

    @section('content')
      <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="images/product-1.png" class="image-popup prod-img-bg"><img src="{{ $product->image }}" class="img-fluid" alt="Colorlib Template"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3>{{ $product->title }}</h3>
    				<p class="price"><span>{{ $product->getPrice() }}</span></p>
    				<p>{{ $product->description }}</p>
                    <p>{{ $product->category }}</p>
                    <p>{{ $product->status }}</p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
									<div class="select-wrap">
										<div class="icon"><span class="ion-ios-arrow-down"></span></div>
										<select name="size" class="form-control">
                                            <option   value='XS' @if($product->size == 'XS'){{ 'selected' }} @endif >XS</option>
                                            <option    value='S' @if($product->size == 'S'){{ 'selected' }} @endif >S</option>
                                            <option   value='M' @if($product->size == 'M'){{ 'selected' }} @endif >M</option>
                                            <option    value='L' @if($product->size == 'L'){{ 'selected' }} @endif >L</option>
                                            <option    value='XL' @if($product->size == 'XL'){{ 'selected' }} @endif >XL</option>
                                        </select>
									</div>
		            			</div>
							</div>
          				</div>
                          <div class="row mt-4">

                        </div>
          	<p><a href="cart.html" class="btn btn-primary py-3 px-5">Acheter</a></p>
    			</div>
    		</div>




    		<div class="row mt-5">
          <div class="col-md-12 nav-link-wrap">
            <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
              <a class="nav-link ftco-animate active mr-lg-1" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Description</a>
            </div>
          </div>
          <div class="col-md-12 tab-wrap">

            <div class="tab-content bg-light" id="v-pills-tabContent">

              <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
              	<div class="p-4">
	              	<h3 class="mb-4">{{ $product->title }}</h3>
	              	<p>{{ $product->description }}</p>
              	</div>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>
    @endsection



  </body>
</html>
