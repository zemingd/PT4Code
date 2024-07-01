s = gets.chomp
t = gets.chomp

s.length.times.do |i|
  next if s[i] == t[i]
  temp = s[i]
  s.gsub!(s[i], "*")
  s.gsub!(t[i], temp)
  s.gsub!("*", t[i])
end

puts s == t ? "Yes" : "No"
