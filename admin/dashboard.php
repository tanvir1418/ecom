<?php
require('top.inc.php');
$users_count=mysqli_query($con, "SELECT count(*) as total from users");
$total_users=mysqli_fetch_assoc($users_count);
// echo $total_users['total'];

$products_count=mysqli_query($con, "SELECT count(*) as total from product");
$total_products=mysqli_fetch_assoc($products_count);
// echo $total_products['total'];

$categories_count=mysqli_query($con, "SELECT count(*) as total from categories");
$total_categories=mysqli_fetch_assoc($categories_count);
// echo $total_categories['total'];

$query_count=mysqli_query($con, "SELECT count(*) as total from contact_us");
$total_query=mysqli_fetch_assoc($query_count);
// echo $total_query['total'];

?>
<div class="content pb-0">
    <div class="orders">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <h1 class="">Welcome, Admin!</h1>
                    </div>
                    <div class="card-dashboard">
                        <div class="card_info">
                            <div class="card_icon">
                                <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                            </div>
                            <div class="card_title">
                                <a href="users.php">Users</a>
                            </div>
                            <div class="card_num">
                                <?php echo $total_users['total']; ?>
                            </div>
                        </div>
                        <div class="card_info">
                            <div class="card_icon">
                                <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                            </div>
                            <div class="card_title">
                                <a href="product.php">Products</a>
                            </div>
                            <div class="card_num">
                                <?php echo $total_products['total']; ?>
                            </div>
                        </div>
                        <div class="card_info">
                            <div class="card_icon">
                                <i class="fa fa-list-alt" aria-hidden="true"></i>
                            </div>
                            <div class="card_title">
                                <a href="categories.php">Categories</a>
                            </div>
                            <div class="card_num">
                                <?php echo $total_categories['total']; ?>
                            </div>
                        </div>
                        <div class="card_info">
                            <div class="card_icon">
                                <i class="fa fa-question-circle" aria-hidden="true"></i>
                            </div>
                            <div class="card_title">
                                <a href="contact_us.php">Queries</a>
                            </div>
                            <div class="card_num">
                                <?php echo $total_query['total']; ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
require('footer.inc.php');
?>