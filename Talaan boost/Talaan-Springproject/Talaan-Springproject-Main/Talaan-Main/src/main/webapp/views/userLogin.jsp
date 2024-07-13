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
    <title>Login</title>
    <link rel="shortcut icon" href="/views/favicon.ico" type="image/x-icon" />
</head>
<body>

<br>
<br>
<br>
<br>
<br>
<center>
<div class="container ">
<center>
    <table class="tb2" >
        
        <tr>
            <th>
                <center>
       
            <p class="ab1" >User Login</p>
            <form action="userloginvalidate" method="post">

                <div class="form-group">
                    <label for="username"></label><br>
                    <input type="text" name="username" id="username" placeholder="Username" required class="usn">
                </center>
                    <hr width=300px color="white">
                    <center>
                </div>
					
                <div class="form-group ">
                    <label for="password"></label>
                    <input type="password" class="pw" placeholder="Password" required name="password" id="password"><input type="checkbox" onclick="showPassword()" class="check_box">
                </center>
                    <hr width=300px color="white">
                </div>
                <center>
                <span class="ab4">Don't have an account <a class="ab3" href="/register">Register here</a></span> <br>
                <br><p class="ab5">${message }</p><br> 
                  
                <input type="submit" value="Login" class="butlog">
                <br>
                </center>
            </th>
                </tr>
            </table>
        </center>

                <br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>

                <a class="ab3b" href="/adminhome">Admin Login</a>
                <br>
                <br>
              
                
        </div>

</div>
</center>
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
         background-color:#FFF4D7;
      
       border-radius: 0;
     }
    
   
     
     
     
 
   .tb2 {
     background-color:#3F4C45;
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
      0 0 42px rgb(255, 174, 0),
      0 0 82px rgb(217, 255, 0),
      0 0 92px rgb(204, 255, 0),
      0 0 102px rgb(255, 238, 0),
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
     .ab3b{
    
        font: 12px Arial;
        font-weight: lighter;
        letter-spacing: 2px;
        color: #442b00;
        opacity: 0.67;
      }

     .ab4{
    
        font: 12px Arial;
        font-weight: lighter;
        letter-spacing: 2px;
        color: #fff;
        opacity: 0.80;
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
     width: 270px;
     
     
     
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
 
    
        
       
 
       .butlog{
 
         background-color: #542f05;
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
         0 0 35px rgb(120, 118, 0);
       
              
              
      
            }
 
 
       
 
 
      
    
   
   </style>
</html>