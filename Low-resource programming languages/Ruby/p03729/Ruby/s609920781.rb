array=gets.chomp.split(" ")
A =array[0]
B =array[1]
C =array[2]
if A[-1]==B[0] then
  x = 0

else
  x = 1

end
if B[-1]==C[0] then
  y = 0

else
  y = 1

end

if x + y == 0 then
  puts ("YES")

else
  puts ("NO")
end
