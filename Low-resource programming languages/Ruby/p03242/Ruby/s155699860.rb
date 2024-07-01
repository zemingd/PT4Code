n = gets.chomp!
puts n.chars.map {|ch| ch == "1" ? '9' : '1' }.join
