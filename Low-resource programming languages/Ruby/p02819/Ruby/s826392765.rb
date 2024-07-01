require 'prime'
x = gets.to_i

while true
  break if x.prime?

  x += 1
end

puts(x)