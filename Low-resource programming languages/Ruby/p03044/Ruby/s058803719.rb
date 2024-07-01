
#N=gets.to_i
#S=gets.chomp
#A=(0...N).map{gets.to_i}
#sum=A.inject(&:+)
#B=gets.split.map(&:to_i)

N=gets.to_i

nodes=Array.new(N){Array.new}

(N-1).times do
  u,v,w=gets.split.map(&:to_i)
  nodes[u-1] << [v-1,w]
  nodes[v-1] << [u-1,w]
end

colors=Array.new(N)
colors[0]=0
stack=[[0,-1]] # index parent

while stack.size!=0
  nod,par=stack.pop
  nodes[nod].each do |c,w|
    next if par==c
    if w%2!=0
      colors[c]=1-colors[nod]
    else
      colors[c]=colors[nod]
    end
    stack << [c,nod]
  end
end
puts colors