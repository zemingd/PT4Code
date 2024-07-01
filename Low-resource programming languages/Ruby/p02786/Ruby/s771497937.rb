h=gets.to_i

count=0
monster=1
while h>0
    h/=2
    count+=monster
    monster*=2
end
puts count
