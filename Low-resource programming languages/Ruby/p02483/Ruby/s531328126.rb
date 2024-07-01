#!/usr/local/bin/ruby
line=gets
rec=line.split(" ")
x=rec[0].to_i 
y=rec[1].to_i
z=rec[2].to_i

def big(a,b,c)
num=[a,b,c]
  if(( num[0]>num[1]) or (num[1]>num[2]))then
    if num[0]>num[1] then
      temp=num[0]
      num[0]=num[1]
      num[1]=temp
    end
    if num[1]>num[2] then
      temp=num[1]
      num[1]=num[2]
      num[2]=temp
    end
  end
  return num[0],num[1],num[2]
end