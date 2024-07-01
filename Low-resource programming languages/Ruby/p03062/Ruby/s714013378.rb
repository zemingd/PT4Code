lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

N = lines[0][0]

def abs(x)
  if x > 0 then
    return x
  else
    return - x
  end
end

num_minus = 0
for i in 1..N do
  if lines[1][i-1] < 0 then
    num_minus += 1
  end
end

arr_abs = []
for i in 1..N do
  arr_abs[i-1] = abs(lines[1][i-1])
end

if num_minus % 2 == 0 then
  ans = 0
  for i in 1..N do
    ans += arr_abs[i-1]
  end
  puts ans
else
  ans = 0
  for i in 1..N do
    ans += arr_abs[i-1]
  end
  puts ans - 2 * arr_abs.sort[0]
end