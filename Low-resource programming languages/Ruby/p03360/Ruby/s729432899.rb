arr = gets.chomp.split.map(&:to_i)
k = gets.to_i
max = arr.max
max2 = max * (2 ** k)
puts arr.inject(:+) - max + max2