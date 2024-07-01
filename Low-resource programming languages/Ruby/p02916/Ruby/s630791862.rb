num = gets
desh = gets.chomp.split(' ')
manzoku1 = gets.chomp.split(' ')
manzoku2 = gets.chomp.split(' ')

for i in 0..num do
  if i > 0 
  	result += manzoku2[i-1] if desh[i-1] == (desh[i]+1)
  result += manzoku1[i]
end
puts result