str = gets.chars
min = 1000

for i in 0 .. str.size - 3
  x = (753 - [str[i], str[i + 1], str[i + 2]].join.to_i).abs
  min = min > x ? x : min
end

puts min
