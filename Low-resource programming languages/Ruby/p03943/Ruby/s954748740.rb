abc = gets.chomp.split(' ').map(&:to_i)
puts abc.max == abc.min(2).inject(:+) ? 'Yes' : 'No'