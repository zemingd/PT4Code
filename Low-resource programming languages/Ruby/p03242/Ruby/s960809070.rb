array=gets.split("").map(&:to_i)
brray=[]
s=0
while s<3
  if array[s] == 1
    brray.push(9)
  else
    brray.push(1)
  end
  s+=1
end
puts 100*brray[0]+10*brray[1]+brray[2]
p brray