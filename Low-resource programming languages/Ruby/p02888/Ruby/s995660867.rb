n = gets.to_i
l = gets.split.map(&:to_i)

count = 0

l.combination(3).each do |(a, b, c)|
  if (b - c).abs < a && a < b + c
    count += 1
  end
end

puts count
