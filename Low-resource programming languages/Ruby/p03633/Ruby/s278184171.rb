n = gets.to_i
t = Array.new(n) { gets.to_i }

puts t.inject(:lcm)