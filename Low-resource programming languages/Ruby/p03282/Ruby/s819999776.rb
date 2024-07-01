s = gets.chomp
k = gets.to_i

if s[0...k].split("").all?{|c| c=="1"}
  puts s[0]
else
  puts s.match(/[2-9]/)
end