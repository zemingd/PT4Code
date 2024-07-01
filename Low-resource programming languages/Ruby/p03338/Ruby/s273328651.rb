n=gets.to_i
s=gets
max=0
for i in 0..n do
  lista=[]
  listb=[]
  c=0
  for x in 0...i do
    lista.push(s[x])
  end
  for y in i...n do
    listb.push(s[y])
  end
  lista=lista.uniq
  listb=listb.uniq
  lista.each{|o|
    if listb.include?(o) then c+=1 end
  }
  if max<c then max=c end
end
puts max