input = gets.chomp
puts input.scan(/[ACGT]+/).map(&:length).max || "0"