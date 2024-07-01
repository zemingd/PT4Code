S = gets.chomp

puts S.match(/[AGCT]+/) ? $&.length : 0