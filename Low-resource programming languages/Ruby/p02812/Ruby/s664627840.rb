n = gets.to_i
s = gets
start = 0
e_num = 2
hit = 0
while (start + 3) <= n do
  hit = hit.succ if s.slice(start, 3) == 'ABC'
  start = start.succ
end
p hit