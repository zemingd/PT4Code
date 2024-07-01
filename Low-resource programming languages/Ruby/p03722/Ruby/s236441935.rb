=begin
N<=10^3
M<=2*10^3
abs(c)<=10^9
maximize score
=end

Edge=Struct.new(:a, :b, :c)

n, m=gets.split.map(&:to_i)
edges=[]
m.times do
  a, b, c=gets.split.map(&:to_i)
  edges << Edge.new(a-1, b-1, -c)
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

ans=(-1)*d[n-1]

n.times do |nn|
  edges.each do |e|
    if d[e.a]!=inf and d[e.a]+e.c<d[e.b]
      d[e.b]=d[e.a]+e.c
    end
  end
end

puts ans<-d[n-1] ? 'inf' : ans
