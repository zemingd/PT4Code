s = gets.chop
puts s == 'RRR' ? 3 : s.include?('RR') ? 2 : s.include?('R') ? 1 : 0