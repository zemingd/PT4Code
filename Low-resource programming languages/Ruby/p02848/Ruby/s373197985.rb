n = gets.chomp.to_i
ch = gets.chomp.chars.map {|c| (c.bytes[0] + n -65) % 26 + 65 }
puts ch.pack('c*')