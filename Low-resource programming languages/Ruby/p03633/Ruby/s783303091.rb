N = gets.to_i
clocks = []
 
N.times do
  clocks << gets.to_i
end
 
puts clocks.inject(:lcm)