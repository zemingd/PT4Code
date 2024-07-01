n,k=gets.split.map(&:to_i)
ps=gets.split.map(&:to_f)
exvals=[]
max=0
now=0
n.times do |i|
  exval=[*1..ps[i]].inject(:+)/ps[i]
  exvals.push(exval)
  now+=exval
  if k<=i
    now-=exvals[0]
    exvals.delete_at(0)
  end
  max=[max,now].max
end
puts max
