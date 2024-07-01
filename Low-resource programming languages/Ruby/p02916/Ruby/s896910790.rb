lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

ans = 0
last_dish = -10
for i in 1..N do
  dish = lines[1][i-1]
  ans += lines[2][dish-1]
  if dish == last_dish + 1 then
    ans += lines[3][last_dish-1]
  end
  last_dish = dish
end
print ans