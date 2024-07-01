wrong = (1..2).map { gets.chomp.to_i }
puts ([1,2,3] - wrong)[0]