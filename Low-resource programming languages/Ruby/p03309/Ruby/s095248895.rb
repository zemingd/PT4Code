n = gets.to_i
a = gets.split.map(&:to_i)
i = 1
b = a.map.with_index(1){|x,i|
  x - i
  }
x = (b.inject(:+) / n.to_f).floor
sum = 0
b.each do |s|
  sum += (s-x).abs
end
puts sum