N,K=gets.split.map(&:to_i)
ps=gets.split.map(&:to_i)
ps.map!{|e|(e+1)/2.0}
ss=Array.new(N+1,0)
N.times do |i|
    ss[i+1]+=ss[i]+ps[i]
end
res=0
(N-K+1).times do |i|
    res= res<(ss[i+K]-ss[i]) ? ss[i+K]-ss[i] : res
end
puts res
