n = gets.chomp.to_i
x = gets.chomp

left = 0
right = x.count("E")
ans = n

n.times do |i|
  s = 0
  curr = x[i]
  if curr == "W"
    s = left + right
    left += 1
  else
    right -= 1
    s = left + right
  end
  ans = s if s < ans
end
puts ans