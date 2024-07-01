a = gets.split(" ").map { |e| e.to_i }

big = a.max
smal = a.min

puts big - smal
