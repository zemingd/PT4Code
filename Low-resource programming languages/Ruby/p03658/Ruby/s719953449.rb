n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)
sum = 0

l.sort!.reverse!
for i in 0..k-1 do
  sum += l[i]
end

puts sum
