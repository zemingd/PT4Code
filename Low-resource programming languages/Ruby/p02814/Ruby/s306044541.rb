n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
q = 1
a.each do |i|
  q = i.lcm(q)
end
puts (q/2) >= m ? (m + q/2) / q : 0
