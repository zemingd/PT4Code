s = gets.chomp
f = false
(s.size - 2).times do |i|
  if s[i] == s[i + 1] and s[i + 1] == s[i + 2] then
    f = true
  end
end
puts (f ? "Yes" : "No")