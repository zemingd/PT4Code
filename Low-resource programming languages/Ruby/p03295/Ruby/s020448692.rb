n, m = gets.chomp.split(' ').map(&:to_i)
left = []
right = []
m.times do |i|
  l, r = gets.chomp.split(' ').map(&:to_i)
  left << l
  right << r
end

inter = left & right
puts inter.length + 1