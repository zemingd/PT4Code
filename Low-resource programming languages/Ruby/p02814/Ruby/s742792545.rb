n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
q = 2
flag = true
a.each do |i|
  q = i.lcm(q)
end
a.each do |i|
  flag = false if (q/2) % i == 0
end
puts flag ? (m + q/2) / q : 0