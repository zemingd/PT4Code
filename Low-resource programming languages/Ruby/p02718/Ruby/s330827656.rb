n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
s = a.sum
ma = 0
c = s * 1.0 / (4.0 * m)

a.each do |i|
  if i >= c
    ma += 1
  end
end
if ma < m
  puts "No"
else
  puts "Yes"
end
