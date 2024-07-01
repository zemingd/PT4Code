n = gets.chomp.to_i
a = gets.split.map(&:to_i)
min = 10**12
count = 0
sum = 0
n.times do |i|
  v = a[i]
  if v < 0
    count += 1
    v = -v
  end
  min = v if min > v
  sum += v
end
sum -= min * 2 if count.odd?
puts sum
