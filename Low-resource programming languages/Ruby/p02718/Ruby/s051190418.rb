n, m = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)
count = 0
sum = 0
a.each do |i|
  sum += i
end

a.each do |k|
  if k < sum / (4 * m)

  else
    count += 1
  end
end

puts m >= count ? "Yes": "No"