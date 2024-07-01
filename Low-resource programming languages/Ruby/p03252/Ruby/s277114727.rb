s = gets.chomp
t = gets.chomp

ans = "Yes"
for i in 0..(s.size - 1) do
  if s[i] != t[i]
    for j in 0..(s.size - 1) do
      if t[j] == s[i] && t[i] != s[j]
        ans = "No"
        break
      end
    end
  end
  break if ans == "No"
end

puts ans