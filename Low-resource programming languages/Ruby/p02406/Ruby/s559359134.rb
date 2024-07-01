a = gets.to_i
ans = ""
for i in 1..a do
  if i % 10 == 3 or i % 3 == 0 then
    ans << " #{i}"
  end
end
puts ans