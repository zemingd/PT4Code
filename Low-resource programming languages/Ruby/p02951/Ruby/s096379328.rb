line = gets.split(' ').map(&:to_i)

A = line[0]
B = line[1]
C = line[2]

ans = C - (A - B)
if ans < 0 then
  ans = 0
end
  
print ans