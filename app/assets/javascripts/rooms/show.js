//======= Scroll update for chat =======
function updateScroll(){
  var element = document.getElementById("panel-body");
  element.scrollTop = element.scrollHeight;
}

$(document).ready(function() {

  //======= Method calls =======
  updateScroll();

});

