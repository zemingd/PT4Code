l,r = gets.split.map(&:to_i)
result = []

2019.times do |i|
  if (l + i) > r
    break
  end
  result << (l+i) % 2019
end
result.sort!
puts result[0] * result[1]
