n,m=gets.split.map(&:to_i)
q=Array.new(n).map{Array.new}
 
m.times{
  a,b=gets.split.map(&:to_i)
  q[a-1]<<b-1
  q[b-1]<<a-1
}
c=0
t=[]
n.times{|i|

  for j in q[i] do
      if i>j then
        for k in t do
          q[k].delete_if{|item|item<i}
          t=[]
        end
        c+=1
      end
  end
              for x in q[i] do
    t << x
  end
}
p c