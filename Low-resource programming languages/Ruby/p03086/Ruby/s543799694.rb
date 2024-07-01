s=gets.chomp.scan(/[ACGT]+/)
puts s.empty? ? 0 : s.map(&:size).max
