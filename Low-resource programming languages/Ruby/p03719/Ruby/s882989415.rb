array = gets.chomp.split(" ").map { |e|e.to_i }
if array[0] <= array[2]  then
  x = 0
else x = 1
end
if array[2] <= array[1]  then
 y = 0
else y = 1
end

if x +y == 0 then
  puts("Yes")

else puts("No")

end
