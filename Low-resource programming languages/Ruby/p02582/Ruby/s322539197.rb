S = gets.chomp

puts S.split('S').map(&:size).max || 0
