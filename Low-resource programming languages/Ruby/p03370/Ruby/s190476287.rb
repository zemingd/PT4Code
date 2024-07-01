n,x = gets.chomp.split(" ").map(&:to_i)
m = n.times.map{gets.to_i}
x -= m.inject(:+)
puts x/m.min+n