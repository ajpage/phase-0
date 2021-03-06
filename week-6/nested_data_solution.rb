# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:outer][inner:]["almost"][3]
#p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
#p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |layer_1|
  if layer_1.kind_of?(Array)
    layer_1.map! do |layer_2|
      layer_2 += 5
    end
  else
    layer_1 += 5
  end 
end

p number_array
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! { |idx1|
#   if idx1.kind_of?(Array)
#     idx1.map! { |idx2|
#       if idx2.kind_of?(Array)
#         idx2.map! { |idx3|
#           idx3 + 'ly'
#           }
#       else
#         idx2 + 'ly'
#       end
#       }
#   else
#     idx1 + 'ly'
#   end
# }

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]] * "ly, "

p startup_names


=begin

1. What are some general rules you can apply to nested arrays?
Start from the outer most array and work in to access data 

2. What are some ways you can iterate over nested arrays?
We used the each method and checked to see if the elements were of type array

3. Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
My pair showed me how to flatten an array.
=end