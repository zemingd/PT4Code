a = [1,3,5,7,8,10,12]
b = [4,6,9,11]
x,y = gets.split.map(&:to_i)
if x == 2 || y == 2 then
  puts "No"
  exit
end
if a.include?(x) then
  if a.include?(y) then
    puts "Yes"
  else
    puts "No"
  end
else
  if b.include?(y)
    puts "Yes"
  else
    puts "No"
  end
end