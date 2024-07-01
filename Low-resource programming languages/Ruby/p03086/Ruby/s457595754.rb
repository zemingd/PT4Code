str = gets.chomp
result = str.split(/[^ACGT]/).map(&:size).max
puts result || 0