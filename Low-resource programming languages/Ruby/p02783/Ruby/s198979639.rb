h, a = gets.split(" ").map(&:to_i)
i = 0
while h > 0
  h = h - a
  i += 1
end
puts i