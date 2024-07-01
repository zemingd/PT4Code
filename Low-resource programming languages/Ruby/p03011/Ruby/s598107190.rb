abc = gets.chomp.split(' ').map(&:to_i)
puts abc.min(2).inject(:+)