<section class="section-featured">
  <div class="title">
      <h1 style="font-size: 5rem">مختاراتنا لكِ</h1>
  </div>
  <div class="product-center container">
  <?php 
      include("part/connect.php");
      $sql = "SELECT * FROM products";

      $results = $connect -> query($sql);

      while ($final = $results -> fetch_assoc()){

      ?> 
      <div class="product">
     
          <div class="product-header">
             <img src="admin/uploads/../<?php echo $final['picture'] ?>" class="show-img" style="width: 200px;" alt="">
              
            </div> 
          <div class="porduct-footer">

              <a href="product-details.php?product-details_id=<?php echo $final['id'] ?>">
                  <h3><?php echo $final['name'] ?></h3>
              
              <h4 class="price"><?php echo $final['price'] ?>$</h4>
                </a>
                <br>
                <br>
                <form class="form">
          <a href="cartHandler.php?cart_id=<?php echo $final['id'] ?>&cart_name=<?php echo $final['name'] ?>&cart_price=<?php echo $final['price'] ?>'"> 
          <h3<button  class="add-to-card" 
           style="padding: 0.5rem;
            background: #F28907;
            padding: 0.8rem 4rem;
            border-radius: 2.5rem;
            color: #fff;
            padding: 1rem;
            font-size: 1.85rem;
            border: none;" ><i class="bx bx-shopping-bag"> </i> أضِف إلى الحقيبة </h3>
          </a>
          
        </form>              
          </div>
   
      </div>

      
      <?php
           }
      ?>
  </div>
</section>
