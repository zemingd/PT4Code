n, d = gets.split.map(&:to_i)

point = []
n.times do
  point << gets.split.map(&:to_i)
end

ans = 0
(0..(n-1)).to_a.combination(2).each do |i, j|
  y = point[i]
  z = point[j]
  
  sum = 0
  d.times do |k|
    sum += ((y[k] - z[k]) ** 2)
  end
  
  num = Math.sqrt(sum)
  if num.to_s =~ /^[0-9]+\.0$/
    ans += 1
  end
end

puts ans