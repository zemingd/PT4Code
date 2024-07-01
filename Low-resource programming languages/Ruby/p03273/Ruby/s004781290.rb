h,w=gets.split.map &:to_i
a=[]
h.times do
  x=gets.chomp.chars
  x.count('#')!=0&&a<<x
end
a=a.transpose; i=0; n=a.size
while i<n do
  if a[i].count('#')==0
    a.delete_at(i)
    n-=1
  else
    i+=1
  end
end
a.transpose.each{|c|puts c.join}
