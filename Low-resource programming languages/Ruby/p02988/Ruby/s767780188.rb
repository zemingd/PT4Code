n = gets.to_i
ary = gets.split
count = 0
(n-2).times do |i|
  count += 1 if ary[i] == [ary[i], ary[i + 1], ary[i + 2]].sort[1]
end
puts count