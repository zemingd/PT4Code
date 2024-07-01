h,w=gets.split.map(&:to_i)
a=[]
h.times do
  a << gets.chomp.split('')
end
def check(a,h)
  i=0
  h.times do
    if a[i].all?{|x| x=="."} == true
     a.delete_at(i)
    else
      i+=1
    end
  end
  return a
end
a=check(a,h)
a=a.transpose
h=a.count
a=check(a,h)
a=a.transpose
h=a.count
k=0
h.times do
  puts a[k].join
  k+=1
end