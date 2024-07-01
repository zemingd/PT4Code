max_length = gets.chomp.scan(/[(A|C|G|T)]+/).max
puts max_length.nil? ? "0" : max_length.size