<?php

//if (session_status() !== PHP_SESSION_ACTIVE) {session_start();}
if(session_id() == '' || !isset($_SESSION)){session_start();}




?>

<!doctype html>
<html class="no-js" lang="en">
  <head>
		<meta charset="UTF-8">
		<title>shoestore</title>
		 <link rel="stylesheet" href="foundation.css" />
    <script src="modernizr.js"></script>
     <link rel="stylesheet" type="text/css" href="style.css"> 
		<style></style>
	</head>
  <body>

    <nav class="top-bar" data-topbar role="navigation">
      <ul class="title-area">
        <li class="name">
          <h1><a href="shoestore/index.php">shoestore</a></h1>
        </li>
        <li class="toggle-topbar menu-icon"><a href="#"><span></span></a></li>
      </ul>

      <section class="top-bar-section">
      <!-- Right Nav Section -->
        <ul class="right">
         
          <li><a href="Add_products.php">Add_Products</a></li>
        
          <?php

          if(isset($_SESSION['username'])){
            echo '<li><a href="account.php">My Account</a></li>';
            echo '<li><a href="logout.php">Log Out</a></li>';
          }
          else{
            echo '<li><a href="login.php">Log In</a></li>';
            echo '<li class="active"><a href="register.php">Register</a></li>';
          }
          ?>
        </ul>
      </section>
    </nav>





    <form method="POST" action="store.php" style="margin-top:30px;">
	
      
		  <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Store name</label>
            </div>
            <div class="small-8 columns">
              <input type="text" id="right-label" placeholder="city" name="city">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Address</label>
            </div>
            <div class="small-8 columns">
              <input type="text" id="right-label" placeholder="Address" name="address">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">City</label>
            </div>
            <div class="small-8 columns">
              <input type="text" id="right-label" placeholder="city" name="city">
            </div>
          </div>
          <div class="row">
            <div class="small-4 columns">
              <label for="right-label" class="right inline">Pin Code</label>
            </div>
            <div class="small-8 columns">
              <input type="number" id="right-label" placeholder="pincode" name="pin">
            </div>
          </div>
         
            
          </div>
          <div class="row">
            <div class="small-4 columns">

            </div>
			
            <div class="small-8 columns">
              <input type="submit" id="right-label" value="pickup here" style="background: #0078A0; border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">
              <input type="reset" id="right-label" value="Reset" style="background: #0078A0; border: none; color: #fff; font-family: 'Helvetica Neue', sans-serif; font-size: 1em; padding: 10px;">
			  
            </div>
          </div>
        </div>
      </div>
	  
    </form>


    <div class="row" style="margin-top:10px;">
      <div class="small-12">

        <footer>
           <p style="text-align:center; font-size:0.8em;"></p>
        </footer>

      </div>
    </div>




    <script src="js/jquery2.js"></script>
    <script src="js/foundation.min.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>
