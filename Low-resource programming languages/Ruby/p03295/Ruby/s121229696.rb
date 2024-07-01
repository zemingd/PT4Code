n,m=gets.split.map(&:to_i)
q=Array.new(n).map{Array.new}

m.times{
  a,b=gets.split.map(&:to_i)
  q[a-1]<<b-1
  q[b-1]<<a-1
}
c=0
n.times{|i|
  for j in q[i] do
      if i>j then
        for x in 0...i do
          for k in q[x] do
            q[k].delete(x)
          end
        end
        c+=1
      end
  end
}
p c