a, b = gets.split.map(&:to_i)
count = 0
for i in a..b do
  count += 1 if i.to_s == i.to_s.reverse
end
puts count
