/*
player will have words to unscramble
there are 10 words to unscramble
they start out with 3 lives
each time they guess wrong they lose one life
if they get through all 10 words with at least 1 life left they win
if they lose all 3 lives before unscrambling the words they lose

--pseudocode--
word object with an array of 10 words to unscramble
has correct words counter property
has a scrambling function that scrambles the letters of the current word

create object for lives
starts with 3 lives
each time a wrong guess is made subtract 1 life

print out game instructions to unscramble 10 words

WHILE there are lives left and all 10 words have not been guessed
    give user the scrambled word and prompt them for their guess
    IF the guess is right
      add one to the number of correct words
    ELSE
      subtract a life
    END IF ELSE
    
    IF correct words = 10
      user has won
    END IF
    go to next word
END IF



var scrambler = {
    words: ['apple', 'wizard', 'telephone', 'dragon', 'puppy','sunglasses', 'baloon', 'coffee', 'computer', 'zebra'],
    correctWords : 0,
    nextWord : function() {return this.words[this.correctWords]},
    scrambled : function() {return this.nextWord().split('').sort(function(){return 0.5-Math.random()}).join('')}
};

var lives = {
    livesLeft : 3,
    loseLife : function() { return this.livesLeft --;}
};

console.log("Are you ready to unscramble some words?");
console.log("Get all ten and you win");
console.log("But three strikes and you're out");


while (lives.livesLeft > 0) {
    
    var guess = prompt("Your word to unscramble is " + scrambler.scrambled())
    if (guess == scrambler.words[scrambler.correctWords]) {
        scrambler.correctWords += 1;
    }
    else {
        lives.loseLife();
    }
    
    if (scrambler.correctWords == 10) {
        console.log("you win");
    }
}

if (lives.livesLeft === 0) {
console.log('you lose');
}

*/

// refactor

var scrambler = {
    words: ['apple', 'wizard', 'telephone', 'dragon', 'puppy','sunglasses', 'baloon', 'coffee', 'computer', 'zebra'],
    correctWords : 0,
    scrambled : function() {return this.words[this.correctWords].split('').sort(function(){return 0.5-Math.random()}).join('')}
};

var lives = {
    livesLeft : 3,
    loseLife : function() { return this.livesLeft --;}
};

console.log("Are you ready to unscramble some words?");
console.log("Get all ten and you win");
console.log("But three strikes and you're out");


while (lives.livesLeft > 0 && scrambler.correctWords < 10) {
    
    var guess = prompt("Your word to unscramble is " + scrambler.scrambled())
    if (guess.toLowerCase() == scrambler.words[scrambler.correctWords]) {
        scrambler.correctWords += 1;
    }
    else {
        lives.loseLife();
    }
    
    if (scrambler.correctWords == 10) {
        console.log("you win");
    }
}

if (lives.livesLeft === 0) 
console.log('you lose');

/*
1. What was the most difficult part of this challenge?
    Deciding on the game to create was difficult and deciding what kind of objects it needed without making it too difficult was too
    
2. What did you learn about creating objects and functions that interact with one another?
    I learned that I have to remember to use "this" inside of objects when calling properties within
    
3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
    I used the sort method in my solution that made the scrambled function I created nice
    
4. How can you access and manipulate properties of objects?
    if you are within the object you call this.property
    if you are outside the object you call object.property
    like all other functions you have to either call this.function() or object.function()


*/
