<?php 
require('top.php');
if(!isset($_SESSION['USER_LOGIN'])){
	?>
<script>
window.location.href = 'index.php';
</script>
<?php
}
?>
<div class="ht__bradcaump__area"
    style="background: rgba(0, 0, 0, 0) url(images/bg/4.jpg) no-repeat scroll center center / cover ;">
    <div class="ht__bradcaump__wrap">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="bradcaump__inner">
                        <nav class="bradcaump-inner">
                            <a class="breadcrumb-item" href="index.php">Home</a>
                            <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                            <span class="breadcrumb-item active">Profile Page</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Bradcaump area -->
<!-- cart-main-area start -->
<div class="wishlist-area ptb--100 bg__white">
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="wishlist-content" style="display: flex; flex-direction: column; align-items: center;">
                    <?php
                        $uid=$_SESSION['USER_ID'];
                        $res=mysqli_query($con,"select * from users where id='$uid'");
                        while($row=mysqli_fetch_assoc($res)){
                    ?>
                    <div class="single-contact-form">
                        <div class="contact-box name">
                            <span class="user__profile__title">Name: </span><input type="text"
                                value="<?php echo $row['name']; ?>" readonly>
                        </div>
                    </div>
                    <div class="single-contact-form">
                        <div class="contact-box name">
                            <span class="user__profile__title">Email: </span><input type="text"
                                value="<?php echo $row['email']; ?>" readonly>
                        </div>
                    </div>
                    <div class="single-contact-form">
                        <div class="contact-box name">
                            <span class="user__profile__title">Mobile: </span><input type="text"
                                value="<?php echo $row['mobile']; ?>" readonly>
                        </div>
                    </div>
                    <div class="single-contact-form">
                        <div class="contact-box name">
                            <span class="user__profile__title">Created On: </span><input type="text"
                                value="<?php echo substr($row['added_on'], 0, 10) ?>" readonly>
                        </div>
                    </div>
                    <?php
                        } 
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>


<?php require('footer.php')?>