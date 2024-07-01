a=gets.chomp;
b="A";
d=0;
e=[]
a.each_char{|c|
  if c==b
	d+=1
    b="C" if b=="A"
    b="G" if b=="C"
    b="T" if b=="G"
    e.push(4) if b=="T"
  else
    e.push(d)
    d=0
  end
}
puts e.max