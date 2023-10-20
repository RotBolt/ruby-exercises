# frozen_string_literal: true

# Boolean logic
# only false and nil are falsey in ruby. Even 0 and string "false" is truthy.

puts false == false
puts 'false' == true
puts nil == false

puts 5 == '5'

# eql? checks both the value type and the actual value it holds.
puts 5.eql?(5.0)
puts 5.eql?(5)

# equal? checks if the two objects are the same object in memory
a = 5
b = 5
a.equal?(b) #=> true  (they are both integers stored in same memory location)

a = "hello"
b = "hello"
a.equal?(b) #=> false (different memory location)


# ternary operator
puts 5.eql?(5) ? 'yes' : 'no'


# spaceship operator

puts 5 <=> 5
puts 5 <=> 6
puts 5 <=> 4

# Logical operator
# ruby' "and" and "or" operators are not the same as ruby's && and || operators
# "and" and "or" have lower precedence than && and ||
# these should be used for control flow like it was used in pearl.
# The origin of these operators is from pearl.

puts nil || 42
puts nil && 42
puts nil or 42
puts 42 && 23
puts 42 and 23


user = Struct.new(:name).new('John')

username = user and user.name

puts username


# line = $stdin.gets || raise 'Line was empty' gives error

line = $stdin.gets or raise 'Line was empty'

puts line


# if example 

def notify(message)
  puts "*** #{message}"
end

enable_notifications = true

notify 'Something Happened' if enable_notifications


# CASES


grade = 'F'

# then is used for direct value assignment
did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
             when 'A' then "Hell yeah!"
             when 'D' then "Don't tell your mother."
             else "'YOU SHALL NOT PASS!' -Gandalf"
             end

puts "did i pass #{did_i_pass}"


grade = 'F'

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

# unless

# unless is the opposite of if. You should use an unless statement when you want to not do something
# if a condition is true, because it can make your code more readable than using if !true.

age = 19
puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing"
else
  puts "Careful now"
end

x = 5

#  must use "then" keyword when using 1-line syntax
if x == 3 then puts "x is 3" end

value = if x == 3
          "LOL"
        else
          "LOL2"
        end

puts value


#  In Ruby, every expression evaluates as true when used in flow control, except for false and nil

if "false"
  puts "even though string is false but I will go in true block"
else
  puts "weird why I am here?"
end

# there is difference bewteen truthy and falsy values. Truthy values are something that evaluates to true. similarly
# falsy values are something that evaluates to false. In ruby, only false and nil are falsy values. Everything else is truthy
# Boolean values are not equal to truthy and falsy values

:x || :y && nil # => :x
:x || (:y && nil) # => :x

(:x or :y) and nil # => nil
