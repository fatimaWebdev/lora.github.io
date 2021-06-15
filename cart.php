<!DOCTYPE html>
<html lang="en">

<?php
session_start();
include("part/head.php");
?>

<body>
<?php
    include("part/header.php");
    ?>
  <!-- Cart Items -->
  <br>
    <br>
    <br>
    
  <?php 
  	
    if (isset($_SESSION['cart'])) {
      $total=0;
      foreach ($_SESSION['cart'] as $key => $value) {

								?>
  <div class="container-md cart">
    <table>
     
    <div class="container-md cart">
    <table>
      <tr>
        <th>المنتجات</th>
        <!--<th>Quantity</th>-->
        <th>المبلغ</th>
      </tr>
      <?php 
								$total=0;
								if (isset($_SESSION['cart'])) {
									
									foreach ($_SESSION['cart'] as $key => $value) {
									
									$total=$total+$value['item_price'];
                  
                  }
                }
								?>

                
      <tr>
        <td>
          <div class="cart-info">
           <br> <br>
            <div>
              <span  style="font-size:3rem"><?php echo $value['item_name'] ?></span>
              <br />
              <a href="#"><form action="cartRremov.php" method="POST">
											<button class="btn-rem" name="remove" >ازالة</button>
											<input type="hidden" name="item_name" value="<?php echo $value['item_name'] ?>">
											</form></a>
            </div>
          </div>
        </td>
        <!--<td><input type="number" value="1" min="1"></td>-->
        <td  style="font-size:2rem">$<?php echo $value['item_price'] ?></td>
      </tr>
      <tr>
    
      </tr>

      <tr>
      
    </table>
<!---oder---->
   	<!---
<form action="orderhandler.php" method="POST">
                  <div class="bor8 bg0 m-b-12">
                  <h1>name</h1>
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="name" placeholder="name">
									</div>

                  <div class="bor8 bg0 m-b-12">
                  <h1>last name</h1>
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="lastname" placeholder="name">
									</div>

									<div class="bor8 bg0 m-b-12">
                    <h1>Address</h1>
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="address" placeholder="address">
									</div>

									<div class="bor8 bg0 m-b-22">
                  <h1>+Phone num</h1>
										<input class="stext-111 cl8 plh3 size-111 p-lr-15" type="text" name="phone" placeholder="Phone number">
									</div>
									<div class="rs1-select2 rs2-select2 bor8 bg0 m-b-12 m-t-9">
                  <h1>Type of payment</h1>
                    <select class="js-select2" name="payment">
											<option value="cash">Cash on delivery</option>
											<option value="paypal">Paypal</option>
										</select>
										<div class="dropDownSelect2"></div>
									</div>
				
                  <div class="flex-w flex-t p-t-27 p-b-33">
                    <div class="size-208">
                      <span class="mtext-101 cl2">
                        Total:$<?php echo $total ?>
                      </span>
                    </div>

							
						</div>
						<input type="hidden" name="total" value="<?php echo $total ?>">
						<button class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" type="submit" name="placeorder">
							Place Order
						</button>
					</form>
-->
      
   <?php

}

}   
   ?>
   
 

      </table>
      <br>
    <br>
    <br>
    </div>
  </div>
    <br>
 </div>
    <br>
    <br>


  </div>

  <?php
  include("part/footer.php");
  ?>
</body>


</html>