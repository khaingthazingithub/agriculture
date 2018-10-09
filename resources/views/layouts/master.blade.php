<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title')</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
    <link rel="stylesheet" href="/font/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/stellarnav.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="/css/hover.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/style.css">

</head>
<body>
    @include('layouts.nav')
    @yield('content')
    @include('layouts.footer')
    <!-- Compiled and minified JavaScript -->
    <script src='/js/jquery-3.3.1.min.js'></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
    <script src="/js/stellarnav.js"></script>
    <script src="/js/jquery.gotop.js"></script>
    <script src="/js/wow.min.js"></script>

    <script>
        jQuery('#main-nav').stellarNav();
        $('.carousel').carousel({
            padding: 100
        });
        setTimeout(autoplay, 4000);
        function autoplay() {
            $('.carousel').carousel('next');
            setTimeout(autoplay, 4000);
        }


        $('.carousel.carousel-slider').carousel({
            fullWidth: true,
            indicators: true
        });
        $("#gotop").gotop();
        new WOW().init();

    </script>
    <script>
    $(document).ready(function() {
         $('select').formSelect();
      });
    </script>

</body>
</html>
