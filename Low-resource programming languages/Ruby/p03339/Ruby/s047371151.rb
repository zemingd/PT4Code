n=gets.to_i
we=gets.chomp
w=[0,0]
e=[0,0]

(0...n).each do |i|
  w[i+1]=w[i]
  e[i+1]=e[i]
  w[i+1]+=1 if we[i]==?W
  e[i+1]+=1 if we[i]==?E
end
e.shift
e << e[-1]
ans = Float::INFINITY
(0..n).each do |i|
  ans = [ans,w[i]+e[-1]-e[i]].min
end
p ans