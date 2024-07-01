s = gets.chop.split.map(&:to_i)
s=s[0]

d=[]
d[0]=s/1000
d[1]=(s-d[0]*1000)/100
d[2]=(s-d[0]*1000-d[1]*100)/10
d[3]=(s-d[0]*1000-d[1]*100-d[2]*10)

if ((d[0]==d[1])||(d[1]==d[2])||(d[2]==d[3]))
  puts "Bad"
else
  puts "Good"
end
