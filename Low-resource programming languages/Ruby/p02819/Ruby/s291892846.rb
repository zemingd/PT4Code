require 'prime'
x = gets.to_i
until x.prime?
  x += 1
end
puts x
