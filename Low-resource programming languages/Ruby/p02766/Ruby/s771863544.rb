n = gets.chomp.split(" ").map(&:to_i)
i = 1
while (n[0] / n[1]**i) > 0 do
  i += 1
end
puts i