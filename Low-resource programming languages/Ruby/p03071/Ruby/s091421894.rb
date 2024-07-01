a_and_b = gets.chomp.split.map(&:to_i)
count = 0
2.times do |i|
  count += a_and_b.max
  a_and_b = [count -1, a_and_b.min]
end
puts count