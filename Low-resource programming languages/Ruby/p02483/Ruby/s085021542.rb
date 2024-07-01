a=gets.split()
b=[]
for i in 0..2 do
	b[i]=a[i].to_i
end
for i in 0..2 do
 print b[i]
 if i==2 
  puts
 else
  print ' '
 end              
end