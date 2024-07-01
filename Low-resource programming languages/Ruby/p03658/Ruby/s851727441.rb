a, b = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i).sort.reverse

l = 0

b.times do |i|
  l += ary[i]
end

puts l
