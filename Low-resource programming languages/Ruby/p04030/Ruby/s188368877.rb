s = gets.chomp

ans = []

for i in 0..(s.size - 1) do
  if s[i] == "B"
    ans.pop
  else
    ans << s[i]
  end  
end

puts ans.join