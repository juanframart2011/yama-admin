<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <title>{{ env( "APP_NAME" ) }} | {{ @$metaTitle }}</title>

    <!-- Icons  -->
    <!-- Bootstrap CSS -->
    <link href="{{ asset( 'css/bootstrap.min.css' ) }}" rel="stylesheet">

    <meta name="csrf-token" content="{{ csrf_token() }}">

    <script>
        var baseUrl = "{{ env( "APP_URL" ) }}";
    </script>
    
    <!-- Hojas de estilo personalizadas -->
    @yield( "cssExtra" )
</head>