N=gets.to_i
as=Array.new(N)
ds=Array.new(N){Array.new(N,false)}
N.times do |i|
  as[i]=gets.to_i
  as[i].times do |j|
    e,f=gets.split.map(&:to_i)
    ds[i][e-1]=f
  end
end

ans=0
(1<<N).times do |i|
  ok=true
  cnt=0
  N.times do |j|
    next if ((i & (1<<j))==0)
    cnt+=1
    ds[j].each_with_index do |e,k|
      next if !e
      ok=false if ((e==1) && (i & (1<<k))==0) || ((e==0)  && (i & (1<<k))!=0)
    end
  end
  ans=ans<cnt ? cnt : ans if ok
end
puts ans
