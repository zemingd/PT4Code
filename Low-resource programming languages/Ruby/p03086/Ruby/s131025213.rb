S = gets.chomp

puts S.scan(/[ACGT]+/).map(&:size).max.to_i
