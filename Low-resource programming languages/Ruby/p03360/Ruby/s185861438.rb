abc = gets.chomp.split(' ').map(&:to_i)
k = gets.chomp.to_i
puts abc.max * (2 ** k) + abc.min(2).inject(:+)