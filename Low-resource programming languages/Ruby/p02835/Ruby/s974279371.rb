s = gets.chomp.split(' ').map(&:to_i).inject(:+)
puts s >= 22 ? 'bust' : 'win'