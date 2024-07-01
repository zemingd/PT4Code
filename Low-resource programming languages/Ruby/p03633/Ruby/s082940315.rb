n = gets.to_i
clocks = []
n.times { clocks << gets.to_i }
puts clocks.inject(:lcm)
