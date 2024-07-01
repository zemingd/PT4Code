n, k = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i)
l = l.sort.reverse
sum = 0
k.times do |i|
  sum += l[i]
end
puts sum
