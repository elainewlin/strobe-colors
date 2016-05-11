$(function() {

  var getSpeed = function(sliderRate) {
    sliderRate = -.8*sliderRate + 1;
    return sliderRate + 's';
  }
  console.log(uivars.red+'s');
  $("#red").slider({                  
      value: uivars.red,                          
      min: -1, max: 1, step: .25,     
      slide: function(event, slider) {    
          uivars.red = slider.value; 
          $('.red').css('animation-duration', getSpeed(slider.value));

      }
  });

  $("#green").slider({                   
      value: uivars.green,                          
      min: -1, max: 1, step: .25,    
      slide: function(event, slider) {    
          uivars.green = slider.value; 
          $('.green').css('animation-duration', getSpeed(slider.value));
      }

  });

  $("#blue").slider({                   
      value: uivars.blue,                          
      min: -1, max: 1, step: .25,     
      slide: function(event, slider) {    
          uivars.blue = slider.value; 
          $('.blue').css('animation-duration', getSpeed(slider.value));

      
      }
  });
});