str = gets.chomp!
puts str.gsub('1', 'a').gsub('9', '1').gsub('a', '9').to_i