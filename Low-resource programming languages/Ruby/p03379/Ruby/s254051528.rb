n = gets.to_i
vals = gets.split.map(&:to_i)

m1, m2 = vals.sort[n / 2 - 1, 2]
vals.each do |val|
  puts val <= m1 ? m2 : m1
end