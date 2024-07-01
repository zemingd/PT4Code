n = gets.to_i
left = []
right = gets.chomp.chars.reverse
ans = 0
(n - 1).times do
  left << right.pop
  tmp = (left & right).size
  ans = tmp if ans < tmp
end
puts ans