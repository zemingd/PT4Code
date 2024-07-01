x, n = gets.split.map(&:to_i)
p = gets.split.map(&:to_i).uniq.sort

j = 0
min = 102
k = 0
101.times do |i|
  if p[j] == i
    j += 1
    next
  end

  v = (x - i).abs
  if min > v
    k = i
    min = v
  end
end

puts k
