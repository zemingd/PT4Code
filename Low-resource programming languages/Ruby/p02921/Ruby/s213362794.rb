s = gets.chomp
t = gets.chomp
i = 0
ans = 0
while i < s.length do
  if s[i] == t[i]
    ans += 1
  end
  i += 1
end
puts ans