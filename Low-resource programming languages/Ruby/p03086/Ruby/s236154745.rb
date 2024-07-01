S = gets.chomp.scan(/[ACGT]+/)
puts S.zero? ? 0 : S.max.length