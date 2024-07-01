n = gets.to_i
a = gets.chomp.split(" ")
aa = a.size
a = a.to_i
all = 1
(0..(a-1)).each do |i|
  all = all * a[i]
end
if all > 10 ** 18
  puts "-1"
else
puts all
end