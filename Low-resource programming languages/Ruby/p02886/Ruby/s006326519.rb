
N = gets.to_i

taste = gets.split.map(&:to_i)

array = taste.combination(2).to_a

sum = []
array.each do |arr|
  sum << arr.inject(&:*)
end

puts sum.inject(&:+)