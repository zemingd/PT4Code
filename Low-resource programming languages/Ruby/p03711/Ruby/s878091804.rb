array=gets.chomp.split(" ")
a =["1","3","5","7","8","10","12"]
b =["4","6","9","11"]
if a.include?(array[0])== true then
  x = 1
elsif b.include?(array[0]) == true then
  x=2
else x=3
end
if a.include?(array[1]) == true then
  y = 1
elsif b.include?(array[1]) == true  then
  y=2
else y=3
end

if x == y then
  puts("Yes")
else
  puts("No")
end