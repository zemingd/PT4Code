n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)
result = 0
d.combination(2) do |a, b|
  result += a * b
end
p result
