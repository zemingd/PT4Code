s = gets.chomp
t = gets.chomp

s.size.times do |i|
  c1 = s[i]
  c2 = t[i]
  s.gsub!(/#{c2}/, "*")
  s.gsub!(/#{c1}/, c2)
  s.gsub!(/\*/, c1)
end

puts (s==t) ? "Yes" : "No"
