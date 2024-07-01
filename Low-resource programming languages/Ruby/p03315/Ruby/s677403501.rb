a=gets.chomp.split("")
ans = 0
a.each do|i|
  if i == "+" then
    ans += 1
  else
    ans -= 1
  end
end
puts ans
