a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
menu = [a,b,c,d,e]
naga = []

for i in menu
naga.push(i%10)
end

sum = 0
while true
 indx = naga.index(naga.min)
  if naga[indx] == 0
  naga.delete_at(indx)
  sum += (((menu.delete_at(indx)-1)/10)+1)*10
 else
  break
 end
end

while naga.length>1 do
  indx = naga.index(naga.max)
  sum += (((menu.delete_at(indx)-1)/10)+1)*10
  naga.delete_at(indx)
end

sum += menu[0]
puts sum