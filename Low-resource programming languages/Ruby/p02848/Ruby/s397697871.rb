n = gets.to_i
s = gets.chomp
puts s.chars.map{|c|
  ((c.ord - 0x41 + n) % 26 + 0x41).chr
}.join
