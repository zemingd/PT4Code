n = gets.to_i
bs = gets.split.map(&:to_i)

res = 0
current = 1
bs.each do |i|
  if i != current
    res += 1
  else
    current += 1
  end
end

puts res