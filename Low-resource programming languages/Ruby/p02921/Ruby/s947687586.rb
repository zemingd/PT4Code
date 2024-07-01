s = gets.chomp.each_char
t = gets.chomp.each_char
puts s.zip(t).count { |a, b| a == b }
