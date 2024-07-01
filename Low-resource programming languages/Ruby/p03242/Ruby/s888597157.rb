n = gets.strip.chars
c = n.map{|c| c == '9' ? '1' : '9'} 
puts c.join
