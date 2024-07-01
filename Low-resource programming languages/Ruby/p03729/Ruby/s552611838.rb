array = gets.chomp.split(" ")
a =array[0].to_i
b =array[1].to_i
c =array[2].to_i
if a <= c  then
  x = 0
else x = 1
end

if c <= b  then
 y = 0

else y = 1
end

if x +y == 0 then
  puts("Yes")

else puts("No")

end