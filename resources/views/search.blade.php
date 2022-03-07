@extends('master')
@section("content")
<div class="custom-product">

   <div class="col-sm-1">
         <a href="">Filter</a><br><br>
        </div>
        <div class="col-sm-4">
        <div class="trending-wrapper">
            <h2>Search Results</h2><br><br>
            @foreach($products as $item)
            <div class="searched-item">
              <a href="detail/{{$item['id']}}">
              <img class="searched-image" src="{{$item['gallery']}}" >
              <div class="">
                  <h2>{{$item['name']}}</h2>
                  <h5>Price: {{$item['price']}}</h5>
                        </div>
              </a>
            </div>
              @endforeach
               </div>
            </div>
        </div>


@endsection