<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rel="apple-touch-icon" sizes="57x57" href="{{ asset( 'img/favicon/apple-icon-57x57.png' ) }}">
    <link rel="apple-touch-icon" sizes="60x60" href="{{ asset( 'img/favicon/apple-icon-60x60.png' ) }}">
    <link rel="apple-touch-icon" sizes="72x72" href="{{ asset( 'img/favicon/apple-icon-72x72.png' ) }}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ asset( 'img/favicon/apple-icon-76x76.png' ) }}">
    <link rel="apple-touch-icon" sizes="114x114" href="{{ asset( 'img/favicon/apple-icon-114x114.png' ) }}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ asset( 'img/favicon/apple-icon-120x120.png' ) }}">
    <link rel="apple-touch-icon" sizes="144x144" href="{{ asset( 'img/favicon/apple-icon-144x144.png' ) }}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ asset( 'img/favicon/apple-icon-152x152.png' ) }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset( 'img/favicon/apple-icon-180x180.png' ) }}">
    <link rel="icon" type="image/png" sizes="192x192"  href="{{ asset( 'img/favicon/android-icon-192x192.png' ) }}">
    <link rel="icon" type="image/png" sizes="32x32" href="{{ asset( 'img/favicon/favicon-32x32.png' ) }}">
    <link rel="icon" type="image/png" sizes="96x96" href="{{ asset( 'img/favicon/favicon-96x96.png' ) }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ asset( 'img/favicon/favicon-16x16.png' ) }}">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{ asset( 'img/favicon/ms-icon-144x144.png' ) }}">
    <meta name="theme-color" content="#ffffff">

    
    <title>{{ env( "APP_NAME" ) }} | {{ @$metaTitle }}</title>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="preload" as="font">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" rel="preload" as="font">
    <link href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" rel="stylesheet">

    <!-- Aos CSS -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="preload" as="style">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="{{ asset( 'css/bootstrap.min.css' ) }}" rel="stylesheet">
    <link href="{{ asset( 'css/main.css' ) }}" rel="stylesheet">

    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Menu Light CSS -->
    <link href="dist/css/mmenu-light.css" rel="preload" as="style">
    <link href="dist/css/mmenu-light.css" rel="stylesheet">

    <link href="dist/css/main.css" rel="preload" as="style">
    <link href="dist/css/main.css" rel="stylesheet">

    <script>
        var baseUrl = "{{ env( "APP_URL" ) }}";
    </script>
    
    <!-- Hojas de estilo personalizadas -->
    @yield( "cssExtra" )
</head>