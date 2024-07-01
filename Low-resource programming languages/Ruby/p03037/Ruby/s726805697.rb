n, m = gets.split.map(&:to_i)
min, max = gets.split.map(&:to_i)
(m-1).times do
  l, r = gets.split.map(&:to_i)
  min = l if min < l
  max = r if max > r
end

puts max - min + 1