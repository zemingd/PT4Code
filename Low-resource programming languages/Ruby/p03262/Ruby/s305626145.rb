n,m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x << m
x.sort!
arr = []
(1..n).each do |i|
  arr << x[i] - x[i-1]
end
puts arr.inject(:gcd)