# frozen_string_literal: true

# Calling an invalid position will result in nil.
# Ruby also allows the use of negative indices, which return elements starting from the end of an array, starting at [-1].


pets_array = ['cat', 'dog', 'fish', 'lizard']

puts pets_array[5] # => nil

puts pets_array[-4] # => 'cat'

puts pets_array.first(2) # => ['cat', 'dog']

puts pets_array.last(2) # => ['fish', 'lizard']

puts pets_array.first  # => 'cat'

puts pets_array.index('cheetah') # => nil


# adding and removing arrays

# push and pop are for at the end
pets_array.push('turtle') # => ['cat', 'dog', 'fish', 'lizard', 'turtle']

pets_array << 'turtle' # => ['cat', 'dog', 'fish', 'lizard', 'turtle', 'turtle']

pets_array.pop # => ['cat', 'dog', 'fish', 'lizard', 'turtle']

pets_array.pop(2) # => ['cat', 'dog', 'fish']

# shift and unshift are for at the beginning

pets_array.shift # => ['dog', 'fish']

pets_array.unshift('cat') # => ['cat', 'dog', 'fish']

puts pets_array.shuffle


