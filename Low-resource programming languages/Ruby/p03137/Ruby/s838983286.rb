n,m = gets.chomp.split(' ').map(&:to_i)
x = gets.chomp.split(' ').map(&:to_i).sort
if (n >= m)
  puts '0'
  exit
end
  
distances = []
for i in 1...m do
  distances << x[i] - x[i-1]
end

puts distances.sort.reverse[(n-1)..-1].inject(:+)