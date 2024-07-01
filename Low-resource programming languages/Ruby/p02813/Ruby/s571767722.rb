n=gets.to_i
p=gets.split
q=gets.split

a=0
b=0
c=0
[*1..n].permutation.each do |perm|
  if p.join==perm.join
    a=c
  end
  if q.join==perm.join
    b=c
  end
  c+=1
end
puts (a-b).abs
