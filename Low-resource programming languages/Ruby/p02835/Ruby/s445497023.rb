s = gets.chomp.split(' ').map(&:to_i).reduce(:+)
puts (s >= 22 ? 'bust' : 'win')