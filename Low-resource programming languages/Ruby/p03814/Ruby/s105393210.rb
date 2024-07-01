s = gets.chomp

puts s.scan(/A.*Z/).map{|i| i.size}.max