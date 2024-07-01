input_line = gets.chomp.split(" ")
n = input_line[0].to_i
l = input_line[1].to_i
result = 0
if l >= 0 then
  for i in l+1 .. l+n-1 do
    result += i
  end
elsif l < 0 && l+n-1 >=0 then
  for i in l .. l+n-1 do
    result += i
  end
else 
  for i in l .. l+n-2 do
    result += i
  end
end
puts result
#puts input_line[0]
#puts input_line[1]