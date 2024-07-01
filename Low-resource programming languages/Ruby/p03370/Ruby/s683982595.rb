n, total = gets.chomp.split(" ").map(&:to_i)
needs = n.times.map{gets.to_i}
p n+(total-needs.inject(:+)) / needs.min