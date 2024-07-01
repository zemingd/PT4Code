a = gets.chomp.split.map(&:to_i)
k = gets.to_i
k.times do
  max = a.max
  a[a.index(max)] = a.max * 2
end
puts a.inject(:+)
