n, m = gets.chomp.split(" ").map(&:to_i)
max_l = 0
min_r = n + 1
m.times do |i|
  l, r = gets.chomp.split(" ").map(&:to_i)
  max_l = l if l > max_l
  min_r = r if min_r > r
end
puts min_r - max_l + 1
