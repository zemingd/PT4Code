io = STDIN
N,Q=io.gets.split.map(&:to_i)
ar=Array.new(N+1,0)
ab=(N-1).times.map{io.gets.split.map(&:to_i)}
px=Q.times.map{io.gets.split.map(&:to_i)}
hash=Hash.new{|h,k|h[k]=[]}
ab.each do |a,b|
  hash[a] << b
end

merge=hash.clone.map do |rt,leaf|
  [rt,leaf+leaf.map{|lf|hash[lf]}.flatten]
end.to_h
px.each do |p1,x|
  ar[p1]+=x
  (merge[p1]||[]).each{|grp|ar[grp]+=x}
end
p ar[1..-1].join(" ")
