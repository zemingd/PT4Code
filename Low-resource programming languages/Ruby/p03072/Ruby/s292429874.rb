n = gets.chomp.to_i
h = gets.chomp.split.map(&:to_i)

count = 0
n.times do |i|
  count += 1 if h[0,i+1].max <= h[i]
end
puts(count)