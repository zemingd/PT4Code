s = gets.chop

puts s.scan(/.{1,2}/).all?{|i| i == "hi" } ? "YES" : "NO"
