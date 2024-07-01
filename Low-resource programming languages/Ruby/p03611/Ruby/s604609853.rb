n    = gets.to_i
ary  = gets.split.map(&:to_i).sort
ary1 = ary.uniq.sort
max = 0

for i in ary1[0] .. ary1[-1]
  max = [max, ary.count(i - 1) + ary.count(i) + ary.count(i + 1)].max
end

puts max
