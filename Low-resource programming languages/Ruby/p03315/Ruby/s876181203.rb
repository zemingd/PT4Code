s = gets.strip.split("")
ans = 0
s.each do |i|
  if i == "+"
    ans += 1
  else
    ans -= 1
  end
end
puts ans