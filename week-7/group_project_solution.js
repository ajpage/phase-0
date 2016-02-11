
//Alyssa Page - pseudocode to code person 3

function sum(numbers) {
  var result = 0;

  for (var i = 0; i < numbers.length; i ++) {
    result += numbers[i];
  };

  return result;
}


function mean(numbers, sum) {
  var result = sum / (numbers.length);
  return result;
}


function median(numbers) {
  var result = (max - min) / 2;
  var max = numbers[0];
  var min = numbers[0];

  for (var i = 1; i < numbers.length; i ++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }

  for (var j = 1; j < numbers.length; j ++) {
    if (numbers[j] < min) {
      min = numbers[j];
    }
  }

  
  return result;
}




// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)