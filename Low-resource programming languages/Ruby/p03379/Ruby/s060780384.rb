n = gets.to_i
xs = gets.chomp.split.map(&:to_i)
sorted = xs.sort
l = sorted[n/2 - 1]
r = sorted[n/2]
n.times do |i|
  puts xs[i] <= l ? r : l
end
