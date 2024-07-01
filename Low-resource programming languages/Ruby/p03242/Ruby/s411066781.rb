n = gets.chomp.chars

puts n.each.map{|c| c == '1' ? '9' : '1'}.join