n=gets.to_i
a=$<.map{|e|e.to_i}.sort
c=0
cc=false
t=a[0]
a.each do |e|
  if t != e
    c+=1 if cc
    t=e
    cc=true
  else
    cc = !cc
  end
end
c+=1 if cc
p c
