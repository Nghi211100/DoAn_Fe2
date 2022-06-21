<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <title>Technology Shop</title>
  @routes()
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="{{ asset('css/all-products.css') }}">
  <link rel="stylesheet" href="{{ asset('css/types-products.css') }}">
  <link rel="stylesheet" href="{{ asset('css/layout.css') }}">
  <link rel="stylesheet" href="{{ asset('css/detail-products.css') }}">
  <link rel="stylesheet" href="{{ asset('css/detailscreen.css') }}">
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light"><a class="navbar-brand" href="/">Technology Shop</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">@foreach($types as $type)
        <li class="nav-item"><a class="nav-link" href="{{ route('products.types', $type->id ) }}">{{ $type->type_name }} <span class="sr-only">(current)</span></a></li>@endforeach
      </ul>
      <div class="search mr-auto">
        <form class="d-flex">
            <input oninput="keypress(this.value)" class="form-control me-2" type="text" placeholder="Search"
                aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
        <div class="search-menu">
        </div>
      </div>
    </div>
    <div class="account">
      <a class="log" href="/login">Login</a>
    </div>
  </nav>{{ $slot }}
  <script src="{{ asset('js/ajax.js') }}"></script>
</body>