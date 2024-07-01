x = gets.to_i
ok = 0
b = 0
p = 0
for b in 1..x do
  for p in 2..16 do
    ans = b ** p
    if ans <= x then
      ok = ans
    end
  end
end
print ok