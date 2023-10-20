# frozen_string_literal: true



# loop Loop (this is like do-while of c++ and kotlin)

i = 10
loop do
  puts "i is #{i}"
  break if i >= 10

  i += 1
end



# while Loop

j = 10
while j < 10
  puts "j is #{j}"
  j += 1
end

puts 'Will you go to prom with me?' while gets.chomp != 'yes'


# until Loop

puts 'Do you like Pizza?' until gets.chomp == 'yes'


# for loop
for i in 0..5
  puts "#{i} zombies incoming!"
end

(0..5).each do |k|
  puts "Value of local variable is #{k}"
end


# times

5.times do |number|
  puts "Alternative fact number #{number}"
end

# upto

5.upto(10) { |num| puts num }

# downto

10.downto(5) { |num| puts num }


# recursion

def fibnoacci(number)
  if number < 2
    number
  else
    fibnoacci(number - 1) + fibonacci(number - 2)
  end
end

list_of_pets = ['cat', 'dog', 'fish', 'bird']

list_of_pets.each_with_index do |pet, index|
  puts "current pet: #{pet}, current index: #{index}"
end



