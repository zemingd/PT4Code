x, d = gets.chomp.split(" ").map(&:to_i)
sum = 0
for i in x..d do
  if i.to_s == i.to_s.reverse
    sum += 1
  end
end
puts sum

