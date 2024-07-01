n = gets.to_i
s = gets.chomp
i = 0
ans = 0
while i < n-2
  if s[i] == "A" && s[i+1] == "B" && s[i+2] == "C"
    ans += 1
  end
  i += 1
end
puts ans