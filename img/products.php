<section class="section-featured">
  <div class="title">
      <h1 style="font-size: 5rem">مختاراتنا لكِ</h1>
  </div>
  <div class="product-center container">
  <?php 
      include("part/conn.php");
      $sql = "SELECT * FROM products";

      $results = $conn -> query($sql);

      while ($final = $results -> fetch_assoc()){

      ?> 
      <div class="product">
     
          <div class="product-header">
          <img src="<?php echo $final['picture'] ?>" class="show-img" style="width: 200px;" alt=""> 
            </div> 
          <div class="porduct-footer">
              <a href="product-details.php?product-details_id=<?php echo $final['id'] ?>">
                  <h3><?php echo $final['name'] ?></h3>
              </a>
              <h4 class="price">$<?php echo $final['price'] ?></h4>
              <button class="add-to-card" onclick="location.href='cartHandler.php?card_id=<?php echo $final['id']?> '"><i class="bx bx-shopping-bag"></i> Add to card</button>
              
          </div>
   
      </div>

      
      <?php
           }
      ?>
  </div>
</section>
