nmx = gets.chomp!.split(' ')
n = nmx[0].to_i
m = nmx[1].to_i
x  =  nmx[2].to_i
 
ai = gets.chomp!.split(' ')
 
cost1 = 0
cost2 = 0
 
for gate in ai
  if gate.to_i < x
    cost1 = cost1+ 1
   else
    cost2 = cost2+1
  end
end
if cost1 < cost2
  puts cost1
else
  puts cost2
end