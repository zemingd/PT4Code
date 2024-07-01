S = gets.chomp
puts S.scan(/[ACGT]+/).map { |s| s.length }.to_a.max || 0
