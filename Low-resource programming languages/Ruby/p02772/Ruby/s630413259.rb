gets.chomp
arr = gets.chomp.split(" ").map(&:to_i)
evens = arr.filter(&:even?)
valid_evens = evens.filter{|num| num % 3 == 0 || num % 5 == 0}
puts evens.length == 0 || valid_evens.length == evens.length ? "APPROVED" : "DENIED"