
s = gets.chomp

puts s.scan(/[ACGT]{0,}/).map(&:length).max
