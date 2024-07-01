x,y=gets.split.map!{|i|i.to_i}
s=gets.split.map!{|i|i.to_i}
s.sort!
if y>x
  y=x
end
for i in 1..y
  s[x-i]=0
end
puts s.sum
