s = gets.chomp
ans = []
for i in 0..(s.length - 1)
  if s[i] == "B"
    if ans.size != 0
      ans.delete_at(ans.size - 1)
    end
  else
    ans.push(s[i])
  end
end
puts ans.reverse