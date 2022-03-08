function send_message() {
  var name = jQuery("#name").val();
  var email = jQuery("#email").val();
  var mobile = jQuery("#mobile").val();
  var message = jQuery("#message").val();

  if (name == "") {
    alert("Please enter name");
  } else if (email == "") {
    alert("Please enter email");
  } else if (mobile == "") {
    alert("Please enter mobile");
  } else if (message == "") {
    alert("Please enter message");
  } else {
    jQuery.ajax({
      url: "send_message.php",
      type: "post",
      data:
        "name=" +
        name +
        "&email=" +
        email +
        "&mobile=" +
        mobile +
        "&message=" +
        message,
      success: function (result) {
        alert(result);
      },
    });
  }
}

function user_register() {
  jQuery(".field_error").html("");
  var name = jQuery("#name").val();
  var email = jQuery("#email").val();
  var mobile = jQuery("#mobile").val();
  var password = jQuery("#password").val();

  var validEmailRegex =
    /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  var emailRegexTest = validEmailRegex.test(email);

  var validBdPhoneNoRegex = /(^(\+88|0088)?(01){1}[3456789]{1}(\d){8})$/;
  var mobileRegexTest = validBdPhoneNoRegex.test(mobile);

  var validFullNameRegex = /[`!@#$%^&*()+\=\[\]{};:"\\|,.<>\/?~]/;
  var stringWithoutNumberRegex = /^([^0-9]*)$/;

  var fullNameSpecialCharTest = validFullNameRegex.test(name);
  //   console.log("fullNameSpecialCharTest : " + fullNameSpecialCharTest);

  var fullNameNumberTest = stringWithoutNumberRegex.test(name);
  //   console.log("fullNameNumberTest : " + fullNameNumberTest);

  var is_error = "";
  if (name == "" || !fullNameNumberTest || fullNameSpecialCharTest) {
    if (!fullNameNumberTest) {
      jQuery("#name_error").html("Please enter name without numeric value");
    } else if (fullNameSpecialCharTest) {
      jQuery("#name_error").html("Please enter name without special character");
    } else {
      jQuery("#name_error").html("Please enter name");
    }
    is_error = "yes";
  }
  if (email == "" || !emailRegexTest) {
    jQuery("#email_error").html("Please enter valid email");
    is_error = "yes";
  }
  if (mobile == "" || !mobileRegexTest) {
    jQuery("#mobile_error").html(
      "Please enter valid mobile (Ex. +8801xxxxxxxxx, 01xxxxxxxxx)"
    );
    is_error = "yes";
  }
  if (password == "" || password.length < 8) {
    jQuery("#password_error").html(
      "Please enter password (at least 8 character)"
    );
    is_error = "yes";
  }
  if (is_error == "") {
    jQuery.ajax({
      url: "register_submit.php",
      type: "post",
      data:
        "name=" +
        name +
        "&email=" +
        email +
        "&mobile=" +
        mobile +
        "&password=" +
        password,
      success: function (result) {
        if (result == "email_present") {
          jQuery("#email_error").html("Email id already present");
        }
        if (result == "insert") {
          window.location.href = "thank_registration.php";
          // jQuery(".register_msg p").html("Thank you for registration");
          // jQuery("#name").val("");
          // jQuery("#email").val("");
          // jQuery("#mobile").val("");
          // jQuery("#password").val("");
        }
      },
    });
  }
}

function user_login() {
  jQuery(".field_error").html("");
  var email = jQuery("#login_email").val();
  var password = jQuery("#login_password").val();
  var is_error = "";

  var validEmailRegex =
    /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
  var emailRegexTest = validEmailRegex.test(email);

  if (email == "" || !emailRegexTest) {
    jQuery("#login_email_error").html("Please enter valid email");
    is_error = "yes";
  }
  if (password == "") {
    jQuery("#login_password_error").html("Please enter password");
    is_error = "yes";
  }
  if (is_error == "") {
    jQuery.ajax({
      url: "login_submit.php",
      type: "post",
      data: "email=" + email + "&password=" + password,
      success: function (result) {
        if (result == "wrong") {
          jQuery(".login_msg p").html("Please enter valid login details");
        }
        if (result == "valid") {
          window.location.href = window.location.href;
        }
      },
    });
  }
}

function manage_cart(pid, type) {
  if (type == "update") {
    var qty = jQuery("#" + pid + "qty").val();
  } else {
    var qty = jQuery("#qty").val();
  }
  if (qty >= 1) {
    jQuery.ajax({
      url: "manage_cart.php",
      type: "post",
      data: "pid=" + pid + "&qty=" + qty + "&type=" + type,
      success: function (result) {
        if (type == "update" || type == "remove") {
          window.location.href = window.location.href;
        }

        if (result == "not_avaliable") {
          alert("Qty not available");
        } else {
          jQuery(".htc__qua").html(result);
        }
      },
    });
  }
}

function sort_product_drop(cat_id, site_path) {
  var sort_product_id = jQuery("#sort_product_id").val();
  window.location.href =
    site_path + "categories.php?id=" + cat_id + "&sort=" + sort_product_id;
}

function wishlist_manage(pid, type) {
  jQuery.ajax({
    url: "wishlist_manage.php",
    type: "post",
    data: "pid=" + pid + "&type=" + type,
    success: function (result) {
      if (result == "not_login") {
        window.location.href = "login.php";
      } else {
        jQuery(".htc__wishlist").html(result);
      }
    },
  });
}
