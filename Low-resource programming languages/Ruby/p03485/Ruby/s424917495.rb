s=gets.chomp
cnt = 0
for i in (0..2) do
  if s[i] == "1"
    cnt+=1
  end
end

puts cnt