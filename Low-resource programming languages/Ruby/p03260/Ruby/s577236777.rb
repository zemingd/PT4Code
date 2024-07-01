a, b = gets.split.map(&:to_i).sort
res = false
(a..b).each do |i|
  res = true if (a * b * i % 2) != 0
end
puts res ? 'Yes' : 'No'