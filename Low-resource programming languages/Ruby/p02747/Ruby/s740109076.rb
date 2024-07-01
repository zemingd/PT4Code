s = gets.chop

if s == ""
  puts "No"
else
  puts s.scan(/.{1,2}/).all?{|i| i == "hi" } ? "Yes" : "No"
end
