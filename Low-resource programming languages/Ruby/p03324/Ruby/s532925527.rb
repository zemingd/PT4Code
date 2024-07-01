input = gets.chomp.split(' ')
d = input[0].to_i
n = input[1].to_i
 
if d == 0
  puts n
  exit
end
b = 0
 
while d != 0
  if b == 0
   	b = 100
  else
    b*= 100
  end
  d = d - 1
end
puts b * n