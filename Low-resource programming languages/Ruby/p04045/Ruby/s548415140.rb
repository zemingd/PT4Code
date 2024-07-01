m=gets.split(' ')[0].to_i
d=Regexp.new("["+gets.delete(' ')+"]")
while(m.to_s=~d) do m+=1 end
puts m