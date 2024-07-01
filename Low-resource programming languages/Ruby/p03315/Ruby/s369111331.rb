a = gets.chomp.split("")
ans = 0
for num in 0..3
  if a[num] == "+"
    ans += 1
  else
    ans -= 1
  end
end
p ans