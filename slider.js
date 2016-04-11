

$(function() {
    
  $("#red").slider({                  
      value: uivars.red,                          
      min: 0, max: 100, step: 1,     
      slide: function(event, slider) {    
          uivars.red = slider.value; 
      }
  });

  $("#green").slider({                   
      value: uivars.green,                          
      min: 0, max: 100, step: 1,     
      slide: function(event, slider) {    
          uivars.green = slider.value; 
      }
  });

  $("#blue").slider({                   
      value: uivars.blue,                          
      min: 0, max: 100, step: 1,     
      slide: function(event, slider) {    
          uivars.green = slider.value; 
      
      }
  });

});