n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

result = []

a.combination(n[1]) do |arr|
  result.push(arr.map.inject(:+))
end

puts result.max