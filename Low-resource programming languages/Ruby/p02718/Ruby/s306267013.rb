n, m = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
sum = a.inject(:+)
c = []

a.each.with_index(1) do |s, i|
  c << i if s >= sum / (4 * m).to_f
end

if c.count >= m
  puts 'Yes'
else
  puts 'No'
end