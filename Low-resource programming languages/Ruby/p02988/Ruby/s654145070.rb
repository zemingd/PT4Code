n = gets.to_i
p = gets.split(' ').map(&:to_i)
count = 0
n.times do |i|
  next if i == 0 || i == n-1
  count += 1 if [p[i-1], p[i], p[i+1]].sort[1] == p[i]
end
puts count