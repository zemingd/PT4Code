n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
aa = a.size
all = 1
(0..(aa-1)).each do |i|
if all > 10 ** 18
  puts "-1"
  break
else
all = all * a[i]
end
end
if all > 10 ** 18
  puts "-1"
else
  puts all
end
