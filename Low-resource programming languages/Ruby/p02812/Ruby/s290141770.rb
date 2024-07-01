n = gets.to_i
s = gets.chomp

puts s.scan(/.{1,#{3}}/).count{|v| v == "ABC"}