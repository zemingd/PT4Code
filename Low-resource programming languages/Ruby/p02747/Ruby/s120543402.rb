s = gets.chomp.to_s
n = 2
s = s.scan(/.{1,#{n}}/)

if s[0] == "hi" && s.uniq.size == 1
  puts "Yes"
else
  puts "No"
end
