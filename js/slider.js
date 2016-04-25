

$(function() {
    
  $("#header").load("header.html"); 
  $("#footer").load("footer.html"); 

  $("#red").slider({                  
      value: uivars.red,                          
      min: -1, max: 1, step: .25,     
      slide: function(event, slider) {    
          uivars.red = slider.value; 
      }
  });

  $("#green").slider({                   
      value: uivars.green,                          
      min: -1, max: 1, step: .25,    
      slide: function(event, slider) {    
          uivars.green = slider.value; 
      }
  });
$('#unicornSlider').slider();
  $("#blue").slider({                   
      value: uivars.blue,                          
      min: -1, max: 1, step: .25,     
      slide: function(event, slider) {    
          uivars.blue = slider.value; 
      
      }
  });
});