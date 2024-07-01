n,m = gets.chomp.split.map(&:to_i)
min,max = 0
ans = 0
l,r = 0,0
m.times do |i|
  l,r = gets.chomp.split.map(&:to_i)
  min = l if min < l
  max = r if i == 0 || max > r
end
ans = max - min + 1 if max >= min
print ans