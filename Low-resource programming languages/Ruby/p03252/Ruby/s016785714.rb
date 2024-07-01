s = gets.chomp
t = gets.chomp

for i in 0..(s.size) do
  unless s[i] == t[i]
    c = s[i]
    s.gsub!(s[i], "0")
    s.gsub!(t[i], c)
    s.gsub!("0", t[i])
  end
end
puts s == t ? "Yes" : "No"