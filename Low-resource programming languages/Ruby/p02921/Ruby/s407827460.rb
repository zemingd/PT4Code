s = gets.chomp.chars
t = gets.chomp.chars
puts s.zip(t).count{|a, b| a == b}