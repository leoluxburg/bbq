function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var barbacoaAddress = document.getElementById('barbacoa_address');

    if (barbacoaAddress) {
      var autocomplete = new google.maps.places.Autocomplete(barbacoaAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(barbacoaAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
