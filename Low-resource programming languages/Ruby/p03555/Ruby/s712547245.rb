s = gets.strip.to_s
t = gets.strip.to_s
if s[0]==t[2] && s[1]==t[1] && s[2]==t[0]
  puts "YES"
else
  puts "NO"
end