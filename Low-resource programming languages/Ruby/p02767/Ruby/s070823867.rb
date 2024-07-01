n = gets.chomp.to_i
xs = gets.chomp.split(' ').map(&:to_i)

for p in 1..100
  sum = 0
  xs.each do |x|
  	sum += (x - p) ** 2
  end
  
  m ||= sum
  m = sum if sum < m
end

puts m