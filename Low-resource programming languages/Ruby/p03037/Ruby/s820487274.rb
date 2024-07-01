_n, m = gets.split.map(&:to_i)
min, max = gets.split.map(&:to_i)
(m-1).times do
  l, r = gets.split.map(&:to_i)
  min = l if min < l
  max = r if max > r
end

ans = max - min + 1
if ans > 0
  puts ans
else
  puts 0
end
