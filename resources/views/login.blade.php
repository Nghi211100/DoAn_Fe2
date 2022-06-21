<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{{ asset('css/login.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Login</title>
  </head>
  <body> 
    <div class="overlay">
      <!-- con = Container  for items in the form-->
      <div class="con">
        <!-- Start  header Content-->
        <header class="head-form">
          <h2>Log In</h2>
          <!-- A welcome message or an explanation of the login form-->
          <p>login here using your username and password</p>
        </header>
        <!-- End  header Content--><br>
        <div class="field-set">
          <!-- user name--><span class="input-item"><i class="fa fa-user-circle"></i></span>
          <!-- user name Input-->
          <input class="form-input" id="txt-input" type="text" placeholder="UserName" required=""><br>
          <!-- Password--><span class="input-item"><i class="fa fa-key"></i></span>
          <!-- Password Input-->
          <input class="form-input" id="pwd" type="password" placeholder="Password" name="password" required="">
          <!-- Show/hide password--><span><i class="fa fa-eye" id="eye" aria-hidden="true" type="button"></i></span><br>
          <!-- buttons-->
          <!-- button LogIn-->
          <button class="log-in"> Log In </button>
        </div>
        <!-- other buttons-->
        <div class="other">
          <!-- Sign Up button-->
          <button class="btn submits sign-up"><a href="{{route('signup')}}"> Sign Up
              <!-- Sign Up font icon--><i class="fa fa-user-plus" aria-hidden="true"></i></a></button>
          <!-- End Other the Division-->
          <!-- End Conrainer-->
          <!-- End Form-->
        </div>
      </div>
    </div>
    <script src="{{ asset('js/login.js') }}"> </script>
  </body>
</html>