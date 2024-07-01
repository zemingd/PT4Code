A = "A".ord

n = gets.to_i
s = gets.chomp

puts s.chars.map {|c| ((c.ord - A + n) % 26 + A).chr}.join