line = gets.split(' ').map(&:to_f)
a=line[0]
b=line[1]
c=line[2]
if c-a-b>=0 then
  if (c-a-b)**2 > (4*a*b) then
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end