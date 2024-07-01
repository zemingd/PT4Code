_, n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

result = []

a.combination(n) do |arr|
  result.push arr.sum
end

puts result.max
