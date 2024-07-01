=begin
N<=10^3
M<=2*10^3
abs(c)<=10^9
maximize score
=end

Edge=Struct.new(:a, :b, :c)
Edge2=Struct.new(:to, :c)

n, m=gets.split.map(&:to_i)
edges=[]
@g=Array.new(n){[]}
m.times do
  a, b, c=gets.split.map(&:to_i)
  edges << Edge.new(a-1, b-1, -c)
  @g[a-1] << Edge2.new(b-1, c)
end

def cycle?(i, used, s, n)
  if i==n and s>0
    true
  else
    ret=false
    @g[i].each do |e|
      next if used[e.to]
      used[e.to]=true
      ret|=cycle?(e.to, used, s+e.c, n)
      used[e.to]=false
    end
    ret
  end
end

if cycle?(n-1, Array.new(n){false}, 0, n-1)
  puts 'inf'
  exit(0)
end

inf=10**18
d=Array.new(n){inf}
d[0]=0
(n-1).times do |nn|
  edges.each do |e|
    if d[e.a]!=inf and d[e.a]+e.c<d[e.b]
      d[e.b]=d[e.a]+e.c
    end
  end
end

puts (-1)*d[n-1]
