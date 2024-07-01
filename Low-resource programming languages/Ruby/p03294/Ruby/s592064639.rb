n = gets.to_i
puts gets.chomp.split(" ").map(&:to_i).inject(:+)-n