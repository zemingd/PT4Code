n = gets.to_i
h = gets.split.map(&:to_i)

c = 0
res = -1
(n - 1).times do |i|
  if h[i] >= h[i + 1] && i != 0 then c += 1
  else c = 0
  end
  res = c if c > res
end

puts res