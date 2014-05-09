$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
  $('body').css({'background-color': 'pink'});

//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
  $("h1").css({'color':'red'});
  $('h1').css("border", "1px solid black");
  $('h1').css("visibility", "visible");

// alert($('.mascot h1').text("NEW TEXT"));

// This works too!
// $('.mascot h1').text("NEW TEXT");
$('.mascot').find("h1").text("sup");
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 

$('img').on('click', function(e){
     e.preventDefault()
    // $(this).attr('src', 'http://img4.wikia.nocookie.net/__cb20121226035921/bones/images/b/b4/Zooey_Deschanel-ALO-058492.jpg')
    $(this).animate({
      opacity: 0.25
    })    
  })

$('img').on('mouseenter', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://img4.wikia.nocookie.net/__cb20121226035921/bones/images/b/b4/Zooey_Deschanel-ALO-058492.jpg')
  })

$('img').mouseleave(function() {
  $(this).attr('src','dbc_logo.jpg')
})
 
 
//RELEASE 4 : Experiment on your own
 
 // $('img').click(function() {
 //  $(this).animate({
 //    opacity = 0.25;
 //  }
 // })

// end of the document.ready function: do not remove or write DOM manipulation below this.

})

//RELEASE 1:
  //Add code here to select elements of the DOM 
	var bodyElement = $('body');
	var headElement = $('head');