n = gets.chomp.to_i
a_b = []
n.times do
  a, b = gets.chomp.split.map(&:to_i)
  a_b << [a,b]
end
# p a_b
a_b_s = a_b.sort {|x, y| (x[1] - x[0]) <=> (y[1] - y[0])}
# p a_b_s
sum = 0
f = true
a_b_s.each do |x|
  sum = sum + x[0]
  if sum > x[1] then
    f = false
  end
end
if f then
  puts 'Yes'
else
  puts 'No'
end