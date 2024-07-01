s = gets.chomp
t = gets.chomp

for i in 0..(s.size - 1) do
  next if s[i] == t[i]
  temp = s[i]
  s.gsub!(s[i], "*")
  s.gsub!(t[i], temp)
  s.gsub!("*", t[i])
end

puts s == t ? "Yes" : "No"
