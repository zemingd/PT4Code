S = gets.chomp

s = S.split(//).sort
puts s.count('+') - s.count('-')