<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paypath</title>
    <!-- favicon  -->
    <link rel="shortcut icon" href="{{ asset('assets/images/favicon.png') }}" type="image/x-icon">
    <!-- faremwork of css -->
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap-lib/bootstrap.min.css') }}">
    <!-- style sheet of css        -->
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <!-- Responsive sheet of css -->
    <link rel="stylesheet" href="{{ asset('assets/css/responsive.css') }}">
    <!-- fonts awsome icon link   -->
    <link rel="stylesheet" href="{{ asset('assets/font-awesome-lib/icon/font-awesome.min.css') }}">
    <!-- slick-slider link css -->
    <link rel="stylesheet" href="{{ asset('assets/css/slick.min.css') }}">
    <!-- animation of css -->
    <link rel="stylesheet" href="{{ asset('assets/css/aos.css') }}">
</head>
<body>
<div class="site-wrapper bg404">
    <!-- ======== 10.1. ooops section ======== -->
    <section>
        <div class="container">
            <div class="hero404" data-aos="zoom-in">
                <h2 class="text-center">OOOPS...</h2>
                <h2 class="text-center">PAGE NOT FOUND</h2>
                <h4>ERROR 404</h4>
                <p class="text-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere dolor voluptatum dolores
                    veritatis provident
                    reiciendis doloremque non autem soluta qui? Repudiandae, vel.</p>
                <a class="btn-hover1" href="{{ route('web.index') }}">Back to Home</a>
            </div>
        </div>
    </section>
    <!-- ======== End of 10.1. ooops section ======== -->
    <!-- ======== End of 10.2. footer404 section ======== -->
    <div class="footor404">
        <div class="d-flex align-items-center justify-content-center gap-4">
            <a href="#"> <i class="fa-brands fa-facebook-f"></i></a>
            <a href="#"> <i class="fa-brands fa-twitter"></i></a>
            <a href="#"> <i class="fa-brands fa-instagram"></i></a>
        </div>
        <p class="text-center">Copyright © 2023 Paypath by Evonicmedia. All Right Reserved.</p>
    </div>
</div>
<!-- ======== End of 10.2. footer404 section ======== -->
<!-- bootstrap min javascript -->
<script src="{{ asset('assets/js/javascript-lib/bootstrap.min.js') }}"></script>
<!-- j Query -->
<script src="{{ asset('assets/js/jquery.js') }}"></script>
<!-- slick slider js -->
<script src="{{ asset('assets/js/slick.min.js') }}"></script>
<!-- main javascript -->
<script src="{{ asset('assets/js/custom.js') }}"></script>
<!-- counter javascript file -->
<script src="{{ asset('assets/js/waypoints.min.js') }}"></script>
<!-- animation from javascript -->
<script src="{{ asset('assets/js/aos.js') }}"></script>
<script>
    AOS.init({
        once: true,
        duration: 1500,
    });
</script>
</body>

</html>
