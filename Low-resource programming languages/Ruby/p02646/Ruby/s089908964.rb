lines = []
while line = gets
    lines << line.chomp.split(' ')
end
lines

 A=lines[0][0].to_i+lines[0][1].to_i*lines[2][0].to_i
pB=lines[1][0].to_i+lines[1][1].to_i*lines[2][0].to_i

if lines[0][0].to_i<lines[1][0].to_i
	if A>=B
 	  print 'YES'
	else
  	 print 'NO'
	end
end
if lines[0][0].to_i>lines[1][0].to_i
  a=lines[0][0].to_i-lines[0][1].to_i*lines[2][0].to_i
  b=lines[1][0].to_i-lines[1][1].to_i*lines[2][0].to_i
  if a<=b
    print 'YES'
  else
    print 'NO'
  end
end