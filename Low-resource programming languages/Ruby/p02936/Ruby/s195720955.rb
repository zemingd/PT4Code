io = STDIN
N,Q=io.gets.split.map(&:to_i)
ar=Array.new(N+1,0)
sum=Array.new(N+1,0)
rv=Array.new(N+1,nil)
ab=(N-1).times.map{io.gets.split.map(&:to_i)}
px=Q.times.map{io.gets.split.map(&:to_i)}
ab.each do |rt,lf|   #rt-lf
  rv[lf]=rt
end
px.each do |p1,x|
  ar[p1]+=x
end

ar.each_with_index do |v,i|
  next if i==0
  sum[i]+=v
  j=i
  while rt=rv[j]
    sum[i]+=ar[rt]
    j=rt
  end
end
puts sum[1..-1].join(" ")
