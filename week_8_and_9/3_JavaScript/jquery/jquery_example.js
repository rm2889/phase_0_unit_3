$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
  $('body').css({'background-color': 'pink'});

//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
  $("h1").css({'color':'red'});
  $('h1').css("border", "1px solid black");
  $('h1').css("visibility", "visible");

console.log($('.mascot').find('h1'));

  

  // var classElement = $('.mascot').html();
  // $('div.mascot').text("New text");
   // console.log($('.mascot').html("adad"));

 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 

$('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://img4.wikia.nocookie.net/__cb20121226035921/bones/images/b/b4/Zooey_Deschanel-ALO-058492.jpg')
  })

$('img').on('mouseout', function(e){
     e.preventDefault()
    $(this).attr('src', 'dbc_logo.jpg')
  })
 
 
//RELEASE 4 : Experiment on your own
 
 
 
 
 
 
// end of the document.ready function: do not remove or write DOM manipulation below this.

})

//RELEASE 1:
  //Add code here to select elements of the DOM 
	var bodyElement = $('body');
	var headElement = $('head');