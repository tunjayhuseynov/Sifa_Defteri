<!doctype html>
<html lang="en">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->

<head>
    {!! SEOMeta::generate() !!}
    {!! OpenGraph::generate() !!}
    {!! Twitter::generate() !!}
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,%20400,700" rel="stylesheet">
    <link rel="stylesheet" href="{{URL::asset('css/bootstrap.css')}}">
    <link rel="stylesheet" href="{{URL::asset('css/animate.css')}}">
    <link rel="stylesheet" href="{{URL::asset('css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{URL::asset('fonts/ionicons/css/ionicons.min.css')}}">
    <link rel="stylesheet" href="{{URL::asset('fonts/fontawesome/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{URL::asset('fonts/flaticon/font/flaticon.css')}}">
    <link rel="icon" href="/images/icon.ico">

    <link rel="stylesheet" href="{{URL::asset('css/style.css')}}">
</head>

<body>
    @yield('home')



    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#f4b214" /></svg></div>
    <script src="{{ URL::asset('js/jquery-3.2.1.min.js') }}"></script>
    <script src="{{ URL::asset('js/jquery-migrate-3.0.0.js') }}"></script>
    <script src="{{ URL::asset('js/popper.min.js') }}"></script>
    <script src="{{ URL::asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ URL::asset('js/owl.carousel.min.js') }}"></script>
    <script src="{{ URL::asset('js/jquery.waypoints.min.js') }}"></script>
    <script src="{{ URL::asset('js/jquery.stellar.min.js') }}"></script>
    <script src="{{ URL::asset('js/main.js') }}"></script>

</body>

</html>