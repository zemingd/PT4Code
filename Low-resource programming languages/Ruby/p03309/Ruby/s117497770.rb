n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

list = []
(0..a.max).each do |b|
  sum = 0
  a.each_with_index do |an, i|
    sum += (an - (b + i + 1)).abs
  end

  list << sum
end

puts list.min