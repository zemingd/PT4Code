l_h,l_w = gets.chomp.split(" ").map{|i|i = i.to_i}
s_h,s_w = gets.chomp.split(" ").map{|i|i = i.to_i}
puts (l_h*l_w)-( l_h*s_w + l_w*s_h ) + s_w*s_h