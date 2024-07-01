n = gets.chomp.to_i
s = gets.chomp

b = 0
w = 0
n.times do |i|
  if s[i] == "#"
    b += 1
  else
    w += 1
  end
end

ans = w
left = 0
right = w
n.times do |i|
  if s[i] == "#"
    left += 1
  else
    right -= 1
  end
  ans = [ans, left + right].min
end
puts ans