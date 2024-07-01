n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.sort.reverse
x = a.inject(:+)
y = x / (4 * m)

if a.select { |k| k >= y }.size >= m
  puts 'Yes'
else
  puts 'No'
end
