n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort_by{|x| x}.reverse
sum = 0
k.times do |i|
  sum += l[i]
end
print sum