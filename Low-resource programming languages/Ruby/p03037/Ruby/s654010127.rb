max, m = gets.split(" ").map(&:to_i)
min=1
m.times do
  l, r = gets.split(" ").map(&:to_i)
  min = l if min < l
  max = r if max > r
  if max < min
    max = min - 1
    break
  end
end

puts max - min + 1
