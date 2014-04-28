$( "#addpin" ).on( "click", function() {
  console.log("pindrop on");


  // function newWindow () {
  //   alert("test");
  //   return function() { console.log("something");}
  // }

  function placeMarker(location) {

    var marker = new google.maps.Marker({
        position: location,
        draggable: true,
        animation: google.maps.Animation.DROP,
        map: window.map
    });

    map.setCenter(location);
    console.log("location: " + location);
    console.log("lat: " + location.k);
    console.log("long: " + location.A);
    var latitude = location.k;
    var longitude = location.A;

    $("#newPinForm input#pin_long").val(longitude);
    $("#newPinForm input#pin_lat").val(latitude);


    google.maps.event.addListener(marker, 'dragend', function (event) {
      latitude = marker.getPosition().lat();
      longitude = marker.getPosition().lng();
      console.log("lat dragged: " + latitude);
      console.log("long dragged: " + longitude);
      marker.setPosition(marker.getPosition());
      console.log(marker.position);
      console.log(marker);
      return marker;
    });


    var contentString = document.getElementById('newPinForm');


    var newPinInfoWindow = new google.maps.InfoWindow({
      content: contentString
    });
    // console.log("adding pin event");
    google.maps.event.addListener(marker, 'click', function(event) {
      newPinInfoWindow.open(map,marker);
      // x = newWindow()
      // console.log(this)
    });

  };

  var dropPinListenerHandle = google.maps.event.addListener(map, 'click', function(event) {
    // setTimeout(function(){
    // $ ( "#newPinForm" ).removeClass("hide");
    // },2000);
    // console.log("adding/inside of map click");
    placeMarker(event.latLng);
    google.maps.event.removeListener(dropPinListenerHandle);
  });

});

