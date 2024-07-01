N,K=gets.split.map(&:to_i)
as=Array.new(100005,0)
N.times do |i|
  a,b=gets.split.map(&:to_i)
  as[a]+=b
end
res=0
cnt=0
100005.times do |i|
  cnt+=as[i]
  if K<=cnt
    puts i
    exit
  end
end