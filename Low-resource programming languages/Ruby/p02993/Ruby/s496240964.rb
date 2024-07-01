s = gets.chomp
current = s[0]
ans = "Good"
(1..s.size).each do |i|
  if current == s[i]
    ans = "Bad"
  end
  current = s[i]
end
puts ans