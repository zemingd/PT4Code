n = gets.to_i
a = [0] + gets.split.map(&:to_i)
n.downto(1) do |i|
  a[i] = a.select{_1 % i == 0}.map{_1 % 2}.sum
end
puts a.sum
1.upto(n) do |i|
  puts i if a[i] == 1
end