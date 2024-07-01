n = gets.to_i
ary = gets.split
count = 0
1.upto(n - 2) do |i|
  count += 1 if ary[i] == [ary[i - 1], ary[i], ary[i + 1]].sort[1]
end
puts count