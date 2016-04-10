  $(document).ready(function (){
    /*
    $('#address_zipcode').change(function(e){
      var zipCode = $(this).val();

      var requestURL = 'http://ziptasticapi.com/' + zipCode ;
      $.getJSON(requestURL, null, function(data){
        console.log(data);

        if (data.city) $('#address_city').val(data.city);
        if (data.state) $('#address_state').val(data.state);
      });
    });
    */

    $('#address_zipcode').keyup(function(e){
      var zipcode = $(this).val();

      // don't do  anything until/unless the zip code is at least five characters
      // long and numeric.

      if (zipcode.length === 5 && $.isNumeric(zipcode)) {
        var requestURL = 'http://ziptasticapi.com/' + zipcode + '?callback=?';
        $.getJSON(requestURL, null, function(data){
          console.log(data);

          if (data.city) $('#address_city').val(data.city);
          if (data.state) $('#address_state').val(data.state);
        });
      }
    });

  });
