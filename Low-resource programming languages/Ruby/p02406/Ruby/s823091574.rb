a = gets.to_i
ans = ""
for i in 1..a do
  if i % 3 == 0 or i.to_s =~ /3/
    ans << " #{i}"
  end
end
puts ans