n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
q = 2
a.each do |i|
  q = i.lcm(q)
end
puts (m + q/2) / q