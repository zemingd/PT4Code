num=[]
num=gets.split.map &:to_i
k=gets.to_i
num.sort!
k.times do
  num[2]*=2
end
p num[0]+num[1]+num[2]
