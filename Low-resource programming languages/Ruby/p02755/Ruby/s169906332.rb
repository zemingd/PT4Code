line = gets.split(' ').map(&:to_f)
a=line[0]
b=line[1]
c=0
d=0
while c==0 do
	if (d*0.08).floor==a.to_i && (d*0.10).floor==b.to_i then
      c=1
      puts d
    end
    d=d+1
    if d>1000 then
      c=1
      puts -1
    end
end