

$(function() {
    
  $("#red").slider({                  
      value: uivars.red,                          
      min: -2, max: 2, step: .5,     
      slide: function(event, slider) {    
          uivars.red = slider.value; 
      }
  });

  $("#green").slider({                   
      value: uivars.green,                          
      min: -2, max: 2, step: .5,     
      slide: function(event, slider) {    
          uivars.green = slider.value; 
      }
  });

  $("#blue").slider({                   
      value: uivars.blue,                          
      min: -2, max: 2, step: .5,     
      slide: function(event, slider) {    
          uivars.blue = slider.value; 
      
      }
  });

});