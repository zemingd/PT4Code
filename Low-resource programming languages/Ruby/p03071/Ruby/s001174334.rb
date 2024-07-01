a, b = gets.chomp.split.map(&:to_i)
n = 0
2.times do
  if a > b
    n += a
    a -= 1
  else
    n += b
    b -= 1
  end
end
puts n
