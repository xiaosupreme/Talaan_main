<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="UTF-8">
    <meta name="viewport"
      content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/views/css/index.css" type="text/css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/9211c1028d.js" crossorigin="anonymous"></script>
    <title>Payment Info</title>
    <link rel="shortcut icon" href="/views/favicon.ico" type="image/x-icon" />

  </head>

  <body>

   

    <header>
      <div class="leftnav">
          <a href="/index"><img src="${pageContext.request.contextPath}/views/imgs/arctic.png"></a>
          <a href="/user/books"><i class="fa-solid fa-lg fa-store"></i></a>
          <a href="/user/books/add"><i class="fa-solid fa-lg fa-boxes-packing"></i></a>
      </div>
      <div class="rightnav">
          <a href="/profileDisplay"><i class="fa-solid fa-lg fa-user-astronaut"></i></a>
          <a sec:authorize="isAuthenticated()" href="/logout"><i class="fa-solid fa-right-from-bracket"></i></a>
      </div>
  </header>
  <form id="order" action="order" method="post" class="payment-form">
    
    <section class="home" id="home">
      <div class="content content-payment">
        <div class="row payment-sides">
          <div class="col-6 payment-details">
            <div class="title">
              <br> <br> <br> <br> <br>
              <h3>Order Form</h3>
            </div>
            <span class="divider"></span>
            
           
              <div class="row">
                <div class="col-9">
                  <label for="username" class="form-label">Name</label>
                  <input type="text" class="form-control" name="username" placeholder="What would you like us to call you?">
                </div>
                
              </div>

              <div class="row">
                <div class="col-9">
                  <label for="email" class="form-label">Email or Phone No</label>
                  <input type="text" class="form-control" name="email" placeholder="How do we contact you?">
                </div>
                
              </div>

             
              
              <div class="row">
                <div class="col-6">
                  <label for="cardnum" class="form-label">Book</label>
                  <input type="text" class="form-control" name="book" placeholder="Name of Book" placeholder="Name of book you want to buy?">
                </div>
              </div>

              <div class="row">
                <div class="col-5">
                  <label for="expire" class="form-label">Price</label>
                  <input type="text" class="form-control" name="price" placeholder="Bid your Price">
<br>
                
                  <label for="address" class="form-label">Address</label>
                  <input type="text" class="form-control" name="address"  placeholder="Where should we deliver?">
                
       </div>        <div class="col-7">
                  <label for="quantity" class="form-label">Quantity</label>
                  <input type="text" class="form-control" name="quantity" placeholder="How many would you like to buy?">

                  <br>
                    
                      <label for="method" class="form-label">Method of Payment</label>
                      <input type="text" class="form-control" name="method" placeholder="How would you like to pay?">
       </div>
      </div>

            
                 
                
            
               
                   
              <button type="submit" class="btn">Submit</button>
            </div>
          </div>
         
          <div class="col-9 payment-color"></div>
        </div>
      </div>
    </form>
    
    </section>


  </body>

  </html>