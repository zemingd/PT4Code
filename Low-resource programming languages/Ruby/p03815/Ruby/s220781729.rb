x=gets.to_i
if x%11>6
  remain=2
elsif x%11>0
  remain=1
else
  remain=0
end
puts (x/11)*2+remain
