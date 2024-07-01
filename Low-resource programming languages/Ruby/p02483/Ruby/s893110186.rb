a=gets.split()
b=[]
for i in 0..2 do
	b[i]=a[i].to_i
end
b.sort.each do |val|
	print val,' '
end
puts;