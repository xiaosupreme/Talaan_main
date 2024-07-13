<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <title>Admin Login</title>
    <link rel="shortcut icon" href="/views/favicon.ico" type="image/x-icon" />
</head>
<body>



<div class="container" ><br><br><br><br><br>
    
  
            <center>
                <table class="tb2">
                  <tr>
                  <th>
<center>
            <p class="ab1">Admin Login</p><br>
            <form action="loginvalidate" method="post">
                <div class="form-group">
                    <label for="username"></label>
                    <input type="text" name="username" id="username" placeholder="Username" required class="usn">
                </div>
            </center>
            <hr width=300px color="white">
            <center>
					
                <div class="form-group">
                    <label for="password"></label>
                    <input type="password" class="pw" placeholder="Password" required name="password" id="password"> <input type="checkbox" onclick="showPassword()" class="check_box">
                </div>
            </center>
            <hr width=300px color="white">
            <center>
                <br>
                <p class="ab5">${message }</p><br><br>
                <input type="submit" value="Login" class="butlog"><br>
                <br>
                <br>
                <br>
                
        </div>

</div>

<script>
    function showPassword() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>

<style>
  
    .jumbotron {
     background-image: url("g1.jpg");
     background-position: center;
     background-repeat: no-repeat;
     background-size:cover;
     height:200px;
     
     }
     
     .jumbotron h1{
     text-align: center;
     text-decoration: none;
     display: inline-block;
     font: 13px;	
     font-weight: bold;
     color: #fbfbfb;
     }
     
     body {
         background-color:#000613;
      
       border-radius: 0;
     }
    
   
     
     
     
 
   .tb2 {
     background-color:#000310;
     border-radius: 32px;
     width: 370px;
    
  
     
    
    }
 
    th{
     height: 500px;
     width: 400px;
    }
    
    
    .ab1 {
    
    font: 20px Arial;
    color: white;
    font-weight: bold;
    text-shadow:
      0 0 7px #fff,
      0 0 10px #fff,
      0 0 21px #fff,
      0 0 42px #0fa,
      0 0 82px #0fa,
      0 0 92px #0fa,
      0 0 102px #0fa,
      0 0 151px #0fa;
    
    
    }
    .ab2 {
    
     font: 12px Courier new;
     font-weight: lighter;
     letter-spacing: 2px;
     color: #fff;
     text-shadow:
 
       0 0 5px #fff,
       0 0 10px #fff,
       0 0 00px #fff,
       0 0 00px rgb(255, 255, 255),
      0 0 00px rgb(255, 255, 255),
      0 0 00px rgb(255, 255, 255),
      0 0 00px rgb(255, 255, 255),
      0 0 00px rgb(255, 255, 255);
     
     
     
     }
 
     .ab3{
    
       font: 12px Arial;
       font-weight: lighter;
       letter-spacing: 2px;
       color: #fff;
       opacity: 0.67;
     }
     .ab3:hover {
    
       font: 12px Arial;
       font-weight: lighter;
       letter-spacing: 2px;
       color: #fff;
       opacity:1;
       text-shadow:
       
   
         0 0 5px #fff,
         0 0 10px #fff,
         0 0 00px #fff,
         0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255);
       
       
       
       }
       .ab5 {
    
        font: 12px arial;
        font-weight: lighter;
        letter-spacing: 2px;
        color: #fff;
        text-shadow:
    
          0 0 5px #ffd000,
          0 0 10px #fffb00,
          0 0 00px #b5c900,
          0 0 00px rgb(205, 150, 0),
         0 0 00px rgb(255, 255, 255),
         0 0 00px rgb(255, 255, 255),
         0 0 00px rgb(255, 255, 255),
         0 0 00px rgb(255, 255, 255);
        
        
        
        }
 
    .usn {
    
     font: 14px Arial;
     color: white;
     letter-spacing: 1px;
     font-weight: lighter;
     background: transparent;
     border: none;
     width: 300px;
     
     
     
     }
     .pw {
    
       font: 14px Arial;
       color: white;
       letter-spacing: 1px;
       font-weight: lighter;
       background: transparent;
       border: none;
       width: 270px;
       
       
       }
 
       .butshow  {
     background-image: url("hidden.png");
     opacity:0.20;
    background-position:bottom;
     background-size: cover;
   background-color: #000310;
   border-radius: 50px;
     border: none;
     padding: 10px 12px;
     height:15px;
     width: 15px;
       }
 
       .butshow:hover {
       
        opacity: 1;
        box-shadow: 0 0 80px white;
             
             
     
           }
 
       .butlog{
 
         background-color: #00ccff;
         border: none;
         color: white;
         padding: 10px 20px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         border-radius: 8px;
         text-shadow:
 
         0 0 5px #fff,
         0 0 10px #fff,
         0 0 00px #fff,
         0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255),
        0 0 00px rgb(255, 255, 255);
       }
       .butlog:hover {
       
         opacity: 1;
         box-shadow: 
         0 0 35px rgb(0, 96, 120);
       
              
              
      
            }
 
 
       
 
 
      
    
   
   </style>
</html>