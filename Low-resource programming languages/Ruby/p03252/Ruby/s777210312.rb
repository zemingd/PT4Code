s = gets.chomp
t = gets.chomp

s.size.times do |i|
  origin = s[i]
  s.gsub!(t[i], "!")
  s.gsub!(origin, t[i])
  s.gsub!("!", origin)
end
puts s==t ? "Yes" : "No"