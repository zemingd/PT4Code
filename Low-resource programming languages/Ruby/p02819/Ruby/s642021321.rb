require 'prime'

x = gets.to_i
loop do
  break if Prime.prime?(x)
  x += 1
end
puts x