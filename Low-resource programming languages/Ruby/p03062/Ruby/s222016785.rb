n = gets.to_i
a = gets.chomp.split.map(&:to_i)
count = 0
sum = 0

n.times do |i|
  if a[i] < 0
    count += 1
  end

  a[i] = a[i].abs
  sum += a[i]
end

if count % 2 == 1
  sum -= a.min * 2
end

puts sum
