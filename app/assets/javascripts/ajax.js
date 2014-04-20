$(document).ready(function() {
  $( "#profile" ).on("click", function() {
    $.get('/profile.html', function(response) {
        $('.popin').html(response).fadeIn();
      });
    });

  $( ".close" ).on("click", function() {
    $.get('/profile.html', function(response) {
        $('.popin').html(response).fadeOut();
      });
    });

  $("#loginButton").on("click", function() {
    $.get("/logged_in.html", function(response) {
      $("#userControl").html(response).fadeIn();
    });
  });

  });