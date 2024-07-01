require 'prime'
x = gets.to_i
loop do
  break if x.prime?
  x += 1
end
puts x