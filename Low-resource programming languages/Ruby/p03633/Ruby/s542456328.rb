N = gets.to_i

a = gets.to_i
(N-1).times{ a = a.lcm gets.to_i }

puts a