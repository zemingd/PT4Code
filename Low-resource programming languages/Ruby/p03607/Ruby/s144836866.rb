io = STDIN
n=io.gets.to_i
hash={}
hash.default=0
n.times do
 a=io.gets.split.map(&:to_i)
 hash[a]+=1
end
ans=0
hash.each do |k,v|
  ans+=1 if v.odd?
end
puts ans
