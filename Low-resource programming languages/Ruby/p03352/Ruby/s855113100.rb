x = gets.to_i
ok = 0
b = 0
p = 0
for b in 1..999 do
  for p in 2..999 do
    ans = b ** p
    if ans <= x then
      ok = ans
    end
    if ans > x then
      break
    end
  end
end
print ok
