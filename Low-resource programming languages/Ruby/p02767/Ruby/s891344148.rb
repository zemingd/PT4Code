n = gets.to_i
m = gets.chomp.split(" ").map(&:to_f)
sum = 0
i = 0
total = (m.inject(:+) / n).ceil
n.times do
  sum += (m[i] - total) ** 2
  i += 1
end
puts sum.to_i