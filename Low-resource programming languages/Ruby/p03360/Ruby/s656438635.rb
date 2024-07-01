abc = gets.split.map(&:to_i)
k = gets.to_i
puts abc.max * 2 ** k - abc.max + abc.inject(:+)