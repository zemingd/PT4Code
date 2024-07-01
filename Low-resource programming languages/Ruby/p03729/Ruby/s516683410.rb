A =gets.chomp.split("")
B =gets.chomp.split("")
C =gets.chomp.split("")
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
