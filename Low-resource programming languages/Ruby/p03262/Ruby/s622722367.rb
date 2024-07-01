@n, @x = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).push(@x).sort

d = 1.upto(@n).map{|i| x[i] - x[i - 1]}
puts d.inject(:gcd)
