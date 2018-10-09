<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Welcome To | Bootstrap Based Admin Template - Material Design</title>
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/waves.css" rel="stylesheet" />
    <link href="/css/animate.min.css" rel="stylesheet" />
    <link href="/css/morris.css" rel="stylesheet" />
    <link href="/css/style.min.css" rel="stylesheet">
    <link href="/css/all-themes.css" rel="stylesheet" />
    <link href="/css/material-icons.css" rel="stylesheet" />
    <link href="/css/bootstrap-material-datetimepicker.css" rel="stylesheet" />
    <link href="/css/waitMe.css" rel="stylesheet" />
    <link href="/css/bootstrap-select.css" rel="stylesheet" />
    <link href="/css/backend-style.css" rel="stylesheet" />
    <link href="/css/dataTables.bootstrap.css" rel="stylesheet">
</head>

<body class="theme-green">
    <section>
        @include('layouts.top-nav')
    </section>
    <section>
        @include('layouts.left-sidebar')
    </section>

    <section class="content">
      @yield('content')
    </section>


    <script src="/js/jquery.min.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="/js/bootstrap-select.js"></script>
    <script src="/js/jquery.slimscroll.js"></script>
    <script src="/js/waves.js"></script>
    <script src="/js/jquery.countTo.js"></script>
    <script src="/js/raphael.js"></script>
    <script src="/js/morris.js"></script>
    <!-- <script src="plugins/chartjs/Chart.bundle.js"></script> -->
    <script src="/js/jquery.flot.js"></script>
    <script src="/js/jquery.flot.resize.js"></script>
    <script src="/js/jquery.flot.pie.js"></script>
    <!-- <script src="plugins/flot-charts/jquery.flot.categories.js"></script> -->
    <!-- <script src="plugins/flot-charts/jquery.flot.time.js"></script> -->
    <script src="/js/jquery.sparkline.js"></script>
    <script src="/js/admin.js"></script>
    <script src="/js/pages/index.js"></script>
    <script src="/js/demo.js"></script>
    <script src="/js/autosize.js"></script>
    <script src="/js/moment.js"></script>
    <script src="/js/bootstrap-material-datetimepicker.js"></script>
    <script src="/js/basic-form-elements.js"></script>
    <script src="/js/jquery.dataTables.js"></script>
    <script src="/js/dataTables.bootstrap.js"></script>
    <script src="/js/dataTables.buttons.min.js"></script>
    <script src="/js/buttons.flash.min.js"></script>
    <script src="/js/jszip.min.js"></script>
    <script src="/js/pdfmake.min.js"></script>
    <script src="/js/vfs_fonts.js"></script>
    <script src="/js/buttons.html5.min.js"></script>
    <script src="/js/buttons.print.min.js"></script>
    <script src="/js/jquery-datatable.js"></script>

</body>

</html>
