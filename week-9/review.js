//calculate the mode
//pseudo code

// input: an array of number or strings
// output: an array of the most frequent value(s)
// steps
// create an empty container to hold the most frequent values
// create a container that will hold the frequency of each value in the input array
// FOR EACH value in the input
// IF it does not already exist in the frequency table container add it to it with a value of one
// ELSE add one to the frequency of that value.
//
// create a variable to hold the max value of frequency and set it to 1
// for each frequency value compare it to the value of max
//   IF the current value is greater than max it is the new max
//	 ELSE move on to the next value
//	 END IF
//
// for each value/frequency set
//   IF the frequency equals max
//   add the value to the container that holds the most frequent values
//   END IF

//initial solution

// function mode(array) {
// 	var mostFrequent = [];
// 	var frequency = {};
// 	var max = 1;

// 	for (var i = 0; i < array.length; i ++) {
// 		if (array[i] in frequency) {
// 			frequency[array[i]] ++;
// 		} 
// 		else {
// 			frequency[array[i]] = 1;
// 		}
// 	}
	
// 	for (var elem in frequency) {
// 	    if (frequency[elem] > max) {
// 	        max = frequency[elem];
// 	    }
// 	}
	
// 	for (var num in frequency) {
// 	    if (frequency[num] === max) {
// 	        mostFrequent.push(num);
// 	    }
// 	}
	
// 	return mostFrequent;
	
}

//refactored solution

function mode(array) {
	var mostFrequent = [];
	var frequency = {};
	var max = 1;

	for (var i = 0; i < array.length; i ++) {
		if (array[i] in frequency) {
			frequency[array[i]] ++;
		} 
		else {
			frequency[array[i]] = 1;
		}
	}
	
	for (var elem in frequency) {
	    if (frequency[elem] > max) {
	        max = frequency[elem];
	    }
	}
	
	for (var num in frequency) {
	    if (frequency[num] === max) {
	        mostFrequent.push(num);
	    }
	}
	
	return mostFrequent;
	
}

//reflection

// What concepts did you solidify in working on this challenge? 
// the for var __ in __ that loops through an object
// What was the most difficult part of this challenge?
// refactoring. javascript built in methods are not as easy to find as ruby
// Did you solve the problem in a new way this time?
// not really
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// yes i wrote psudocod that explicitly stated to loop through each object. most of it was the same.


