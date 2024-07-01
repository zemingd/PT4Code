n, m = gets.chomp.split(' ').map(&:to_i)

min, max = gets.chomp.split(' ').map(&:to_i)
(m - 1).times do
  l, r = gets.chomp.split(' ').map(&:to_i)
  min = l if min < l
  max = r if r < max
end
puts max - min + 1
