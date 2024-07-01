a=gets.chomp;
d=0;
e=[]
a.each_char{|c|
  if /A|C|G|T/ =~ c
	d+=1
  else
    e.push d
    d=0
  end
  if d==4
	e.push d
	d=0
  end
}
puts e.max