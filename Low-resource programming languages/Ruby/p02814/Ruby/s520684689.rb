n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
q = 1
flag = true
a.each do |i|
  if i % 4 == 0
    flag = false
    break
  end
  q = i.lcm(q)
end
puts flag ? (m + q/2) / q : 0