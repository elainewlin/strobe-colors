

$(function() {
    
  $("#red").slider({                  
      value: uivars.red,                          
      min: 1, max: 7, step: 1,     
      slide: function(event, slider) {    
          uivars.red = slider.value; 
      }
  });

  $("#green").slider({                   
      value: uivars.green,                          
      min: 1, max: 7, step: 1,     
      slide: function(event, slider) {    
          uivars.green = slider.value; 
      }
  });

  $("#blue").slider({                   
      value: uivars.blue,                          
      min: 1, max: 7, step: 1, 
      slide: function(event, slider) {    
          uivars.green = slider.value; 
      
      }
  });

});