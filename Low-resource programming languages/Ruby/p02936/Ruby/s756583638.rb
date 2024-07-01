N,Q=gets.split.map(&:to_i)
G=Array.new(N){Array.new}
(N-1).times do
  a,b=gets.split.map{|i|i.to_i-1}
  G[a]<<b
  G[b]<<a
end
n=[0]*N
Q.times do
  p,x=gets.split.map(&:to_i)
  n[p-1]+=x
end
q=[[0,0]]
until q.empty?
  cur,pre=q.shift
  G[cur].each do |nex|
    next if nex==pre
    q<<[nex,cur]
    n[nex]+=n[cur]
  end
end
puts n*" "