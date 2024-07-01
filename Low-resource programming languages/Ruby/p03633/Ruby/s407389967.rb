N = gets.to_i

A = []
N.times{ A.push(gets.to_i )}

puts A.inject(:lcm)