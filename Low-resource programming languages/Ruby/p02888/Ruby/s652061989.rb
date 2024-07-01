n = gets.chomp.to_i
l = gets.chomp.split.map(&:to_i)
result = 0
l.combination(3) do |a, b, c|
  if a < b + c && b < a + c && c < a + b
    result += 1
  end
end
p result
