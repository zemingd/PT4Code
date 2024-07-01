n = gets.chomp.to_i
a_b = []
n.times do
  a, b = gets.chomp.split.map(&:to_i)
  a_b << [a,b]
end
# p a_b
a_b_s = a_b.sort do  |x, y|
  if x[1] == y[1]  then
    y[0] <=> x[0]
  else
    x[1] <=> y[1]
  end
end
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