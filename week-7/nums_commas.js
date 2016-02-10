// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: FJ Collins.

// Pseudocode
// input: inetger
// output: string with commas
// steps to take:
// define a method that takes in an integer as as agrement
// convert number to a string
// store string in a variable
// reverse the string
// every third place
//   push ',' into string
// return string with commas in correct place


// Initial Solution
function separateComma(number) {
  var numberString = number.toString();
  var numberRev = numberString.split('').reverse().join('');
  var counter = 0
  var withComma = ''
  
  for (var i=0; i < numberRev.length; i ++) {
     withComma += numberRev[i];
     counter ++;
     if (counter % 3 == 0) { withComma += ','; }
       
  }
  
  withComma = withComma.split('').reverse().join('');
  return withComma;
}




// Refactored Solution
function separateComma(number) {
  var numberRev = number.toString().split('').reverse().join('');
  var counter = 0
  var withComma = ''
  
  for (var i=0; i < numberRev.length; i ++) {
     if (counter > 0 && counter % 3 == 0) { withComma += ','; } 
     withComma += numberRev[i];
     counter ++;
  }
  
  withComma = withComma.split('').reverse().join('');
  return withComma;
}




// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
   if (!test) {
     console.log(test_number + "false");
     throw "ERROR: " + message;
   }
   console.log(test_number + "true");
   return true;
 }


 assert(
   separateComma(1000) === "1,000",
   "4 digit numbers should have one comma.",
   "1. "
 )
 
 assert(
   separateComma(0) === "0",
   "zero should return 0.",
   "1. "
 )
 
 assert(
   separateComma(123) === "123",
   "The value should return a string with no commas.",
   "1. "
 )
 
 assert(
   separateComma(123456789) === "123,456,789",
   "The value should return a string with no commas.",
   "1. "
 )



// Reflection
/*

1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
Neither my pair nor I had looked back at our Ruby solutions for this problem. 
We chose to do it differently this time that I had with Ruby. I didn't reverse anything in my Ruby solution.

2. What did you learn about iterating over arrays in JavaScript?
It is very similar to Ruby but I like the JS for loop better with the increment/decrement in the beginning

3. What was different about solving this problem in JavaScript?
There isn't a reverse method for a string in JavaScript so we had to turn the string into an array first

4.What built-in methods did you find to incorporate in your refactored solution?
We used split, reverse, and joing in our refactored solution


*/