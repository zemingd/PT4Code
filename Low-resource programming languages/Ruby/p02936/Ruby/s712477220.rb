io = STDIN
N,Q=io.gets.split.map(&:to_i)
ab=Hash.new{|h,k|h[k]=[]}
ar=Array.new(N,0)
(N-1).times do
  a,b = io.gets.split.map(&:to_i).sort
  ab[a-1] << b-1
end
Q.times do
  p,x=io.gets.split.map(&:to_i)
  ar[p-1]+=x
end
que=[0]
while n=que.shift
  ab[n].each do |to|
    ar[to]+=ar[n]
    que << to
  end
end
puts ar.join(" ")
