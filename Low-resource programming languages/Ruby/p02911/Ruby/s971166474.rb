N,K,Q=gets.split.map(&:to_i)
qs=Q.times.map{gets.to_i}
ps=Array.new(N+1,0)
for i in 0..Q-1
    ps[qs[i]]+=1
end
ps.map!{|e|K-Q+e}
for i in 1..N
    puts ps[i]<=0 ? "No" : "Yes"
end
