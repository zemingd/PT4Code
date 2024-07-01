s = gets.chomp
t = gets.chomp

s.length.times do |i|
  orig = s[i]
  s.gsub!(t[i], "!")
  s.gsub!(orig, t[i])
  s.gsub!("!", orig)
end

if s == t
  puts "Yes"
else
  puts "No"
end