n, d = gets.chomp.split(' ').map(&:to_i)
arr = []

count = 0

n.times do |i|
  pair = gets.chomp.split(' ').map(&:to_i)
  arr << pair
end

target = arr.combination(2).to_a

target.each do |pair|  
  sum = 0
  d.times do |j|
    sum = sum + ((pair[0][j] - pair[1][j])**2)
  end
  distance = sum**(1/2.0)
  count = count + 1 if distance.to_i == distance
end
puts count