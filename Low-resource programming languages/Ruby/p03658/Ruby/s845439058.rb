n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort.reverse
sum = 0
for i in 0...k do
  sum += l[i]
end
puts sum
