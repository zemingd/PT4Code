n = gets.chomp

puts 'hon' if n[-1].to_i == 2 || n[-1].to_i == 4 || n[-1].to_i == 5 || n[-1].to_i == 7 || n[-1].to_i == 9
puts 'pon' if n[-1].to_i == 0 || n[-1].to_i == 1 || n[-1].to_i == 6 || n[-1].to_i == 8
puts 'bon' if n[-1].to_i == 3