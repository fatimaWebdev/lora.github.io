<!DOCTYPE html>
<html lang="en">
<?php
include("part/head.php");
?>
<body>
<!----header----->
  <?php
    include("part/header.php");
    ?>

<!-- Product Details -->
<section class="section product-detail">
    <div class="details container-md">
    <?php
    include ("part/connect.php");
    $id=$_GET['product-details_id'];
    $sql = "SELECT * FROM products where id='$id' ";

    $results = $connect -> query($sql);

    $final=$results -> fetch_assoc();

    ?>
      <div class="left">
        <div class="main">
          <img src="admin/uploads/../<?php echo $final['picture'] ?>" alt="">
        </div>
        <div class="thumbnails">
          
          
        </div>
      </div>
      <div class="right">
       <!-- <span>Home/T-shirt</span>-->
        <h1> <?php echo $final['name'] ?></h1>
        <div class="price">$<?php echo $final['price'] ?></div>
        <form>
          <div>
                       
          </div>
        </form>

        <form class="form">
          <input type="text" placeholder="1">
          <a href="cartHandler.php?cart_id=<?php echo $final['id'] ?>&cart_name=<?php echo $final['name'] ?>&cart_price=<?php echo $final['price'] ?>'"> 
          <h3<button  class="add-to-card" 
           style="padding: 0.5rem;
            background: #F28907;
            padding: 0.8rem 4rem;
            border-radius: 3rem;
            color: #fff;
            padding: 1rem;
            font-size: 1.75rem;
            border: none;" ><i class="bx bx-shopping-bag"></i>أضِف إلى الحقيبة</h3>
          </a>
          
        </form>
        <h3>تفاصيل المنتج</h3>
        <p> <?php echo $final['description'] ?> </p>
      </div>
    </div>
  </section>


  <!-- Footer -->
  <?php
  include("part/footer.php");
  ?>

    
</body>
</html>
  