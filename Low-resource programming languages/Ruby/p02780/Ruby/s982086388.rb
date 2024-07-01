_,k = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i)
a = nums.each_cons(k).to_a
b = a.map {|e| e.inject(&:+)}
c = a[b.index(b.max)]
res = 0
c.each do |n|
  res += [*1..n].inject(&:+) / n.to_f
end
puts res