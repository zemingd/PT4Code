n = gets.to_i
s = gets.chomp.chars
ao = "A".ord
puts s.map {|c| ((c.ord - ao + n) % 26 + ao).chr }.join("")