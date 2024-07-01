a=[1, 6, 36, 216, 1296, 7776, 46656]
b=[1,9, 81, 729, 6561, 59049, 531441]
n=gets.to_i
c=0
t=[n]
loop{
break if t.include?(0)
for k in 0...t.size
e=t[k]
for i in 0..5
  if a[5-i]<=e
    t<<e-a[5-i]
  end
  if b[5-i]<=e
    t<<e-b[5-i]
  end
end
end
t.uniq!
c+=1
}
p c