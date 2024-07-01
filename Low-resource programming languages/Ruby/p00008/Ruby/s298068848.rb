sum = gets.to_i

count = [*0..9].repeated_permutation(4).map{|p| p.inject(:+) }.count(sum)

puts count