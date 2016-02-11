 // JavaScript Olympics

// I paired [with: ] on this challenge.

// This challenge took me [#] hours.


// Warm Up

// function win (athletes) {
  
//   for (var i=0;i < athletes.length; i++) {
//     athletes[i].win = athletes[i].name + " won the " + athletes[i].event + "!";
//   }    
  
// };

// var myAthletes = [ { name: "Sarah Hughes", event: "Ladies' Singles"}, { name: "Michelle Phelps", event: "Swimming"} ];

// // var olympics = new win(myAthletes);
// win(myAthletes);
//console.log(myAthletes);

// Bulk Up




// Jumble your words

// function jumble (str) {
//   var strRev = str.split('').reverse().join('');
//   return strRev;
// }


//console.log(jumble("cowboys"))



// 2,4,6,8

// function evenOnly(numbers){
//   var evensOnly = [];
//   for (var i = 0; i < numbers.length; i++){
//     if (numbers[i] % 2 === 0){
//       evensOnly.push(numbers[i]);
//     }
//   }
//   return evensOnly;
// }
// var myNumbers = [1,2,3,4,5,6,7,8,9,0];

//console.log(evenOnly(myNumbers));


// "We built this city"
// function Athlete(name, age, sport, quote){
//   this.name = name;
//   this.age = age;
//   this.sport = sport;
//   this.quote = quote;
// };


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
// Reflection
// * What JavaScript knowledge did you solidify in this challenge?

// Creating objects with constructors.  
  
// * What are constructor functions?

// Function that constructs (populates) the object with whatever arguments are passed in initially  with the call to "new".
  
// * How are constructors different from Ruby classes (in your research)?
  
// They are not defined in a function called "initialize". You can also use it to define methods inside the object.