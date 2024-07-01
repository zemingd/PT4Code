n=gets.to_i
s=[]
ans=0
s=gets.chomp.split("")
for i in 1...n do
  cnt=0
  x = []
  for j in 0...i do
    if x.find{ |str| str==s[j] }==nil then
      x.push(s[j])
    end
  end
  y = []
  for j in i...n do
    if y.find{ |str| str==s[j] }==nil then
      y.push(s[j])
    end
  end
  for j in 0...x.length do
    if y.find{ |str| str==x[j]}!=nil then
      cnt+=1
    end
  end
  if ans<cnt then
    ans=cnt
  end
end
p ans
