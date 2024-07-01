a, b = gets.split(" ").map(&:to_i)
res = 0

2.times do
  if a < b
    res += b
    b -= 1
  else
    res += a
    a -= 1
  end
end
puts res