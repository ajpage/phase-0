=begin
--pseudocode--
input: array of dbc students
output: an array of arrays
steps:
take the number of elements in the input array mod 4 to see how many there will be left over if there are groups of four
IF it is less than 3 add each to a group of 4 to make 0-2 groups of 5
	ELSE if it is 3 make one group of 3 and the rest groups of 4
END IF

create an empty container to store the groups of students
WHILE there are still students left to be grouped
  put the first four students into the container of groups and remove them from the original list
END WHILE

=end

peers = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

def accountability_groups(arr)
  divisible_by_4 = arr.length % 4
  groups = []

  if divisible_by_4 == 3
    groups << arr.shift(3)
  else
    while divisible_by_4 > 0
      groups << arr.shift(5)
      divisible_by_4 -= 1
    end
  end

  while arr.length > 0
  	groups << arr.shift(4)
  end

  groups
end

#refactor
def accountability_groups(arr)
  arr = arr.shuffle
  divisible_by_4 = arr.length % 4
  groups = []

  if divisible_by_4 == 3
    groups << arr.shift(3)
  else
    divisible_by_4.times do
      groups << arr.shift(5)
    end
  end

  arr.each_slice(4) { |idx|  groups << idx }

  groups
end

=begin

What was the most interesting and most difficult part of this challenge?
I had a lot of freedom which I would have liked more if it was not such a busy week so that made it difficult to do the optional parts. 
Do you feel you are improving in your ability to write pseudocode and break the problem down?
Yes, I think I'm getting better at it with practice and with seeing other people do it and incorporating some of their strategies.
Was your approach for automating this task a good solution? What could have made it even better?
I think if i would have made it into a hash instead of an array it would have been better. Also randomizing the groups could make it better. 
My solution works and puts students in mainly groups of 4 with the options of one group of 3 and 1 or 2 groups of 5 if the original group is not divisible by 4.
What data structure did you decide to store the accountability groups in and why?
I chose an array because unless the groups have some other name than group 0 group 1 etc its easy enough to find that group in the array format.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
I used the enumerable method each_slice in my refactored solution which I had not seen or used before and it made my solution much easier to read.

=end


