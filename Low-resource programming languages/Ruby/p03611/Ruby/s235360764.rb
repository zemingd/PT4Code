n   = gets.to_i
ary = gets.split.map(&:to_i)

max = 0

for i in ary[0] .. ary[-1]
  max = [max, ary.count(i - 1) + ary.count(i) + ary.count(i + 1)].max
end

puts max
