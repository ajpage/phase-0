// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
  bodyElement = $('body');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  $( 'h1:first').css({'color': 'green', 'border': '5px solid black', 'visiblity': 'hidden'});
  $( 'h1:last').html('Sea Lions 2016');
//RELEASE 4: Event Listener
  // Add the code for the event listener here
  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'snoop_515.jpg')
  })

  $('img').on('mouseleave', function(){
    $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own

$('img').click(function() {
 $(this).animate({
   width: "70%",
   opacity: 0.75,
 }, 2000 );
});






})  // end of the document.ready function: do not remove or write DOM manipulation below this.




//What is jQuery?
// JQuery is a JavaScript library
//What does jQuery do for you?
// Makes manipulating web element, event handling and animation easier
//What did you learn about the DOM while working on this challenge?
//how events and event handlers can alter the DOM