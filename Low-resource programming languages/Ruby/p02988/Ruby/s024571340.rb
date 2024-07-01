n=gets.to_i
p=gets.split.map(&:to_i)
c=0
for i in 1..n-2 do
  if p[i-1,3].sort.at(1)==p[i]
    c+=1
  end
end
p c