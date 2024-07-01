line = readlines.map(&:to_i)

min_rest = 100
time = []
for i in 1..5 do
  rest = line[i-1] % 10
  if rest == 0 then
    time[i-1] = line[i-1]
  else
    time[i-1] = line[i-1] + 10 - rest
    if min_rest > rest then
      min_rest = rest
    end
  end
end
    
ans = 0
for i in 1..5 do
  ans += time[i-1]
end
if min_rest == 100 then
  puts ans
else
  puts ans - 10 + min_rest
end