<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>eKart</title>



<!--fonawesome-->    <script src="https://kit.fontawesome.com/9f6e8b79f7.js" crossorigin="anonymous"></script>
    

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
    {{View::make('header')}}
@yield('content')
{{View::make('footer')}}


<style>

    .custom-login{
        height: 500px;
        padding-top: 100px;
    }
    
    img.slider-img{
        height: 400px !important;
    }

    .custom-product{
        height: 700px;
    }

    .slider-text{
        background-color:#6a616185 !important; 
    }

    .trending-image{
height: 100px;

    }

    .trending-item{
        float: left;
        width: 20%;
        margin: 2%;
    }

    .trending-wrapper{
        margin: 30px;
    }

    .carousel-caption{
        left: 30%;
        right: 30%
    }

    .detail-img{
        height: 270px;
    }

    .search-box{
        width: 500px !important
    
    }

    .search-result{
        border-bottom: 1px solid #ccc;
    margin-bottom: 50px;
    padding-bottom: 50px;

    }

    .searched-image{ height: 150px;

    }

.cart-list-devider{
    border-bottom: 1px solid #ccc;
    margin-bottom: 20px;
    padding-bottom: 20px;
}


    </style>
    
</body>
</html>