dishes = 5.times.map do
  gets.chomp.to_i
end

a = dishes.map do |i|
  (i % 10) == 0 ? i : (i + 10 - i % 10)
end.inject(:+)

b = dishes.map do |i|
  (i % 10) == 0 ? 0 : 10 - i % 10
end.max

puts a - b
