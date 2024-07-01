multiplication = gets.chomp.split(' ').map(&:to_i).inject(:*)
puts multiplication % 2 == 0 ? multiplication/2 : multiplication/2+1