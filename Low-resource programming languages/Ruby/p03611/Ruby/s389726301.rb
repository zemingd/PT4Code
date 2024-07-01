io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
hash={}
hash.default=0
a.each do |aa|
  hash[aa]+=1
end
ans=0
(0..10**5).each_cons(3) do |x,y,z|
  ans=[ans,hash[x]+hash[y]+hash[z]].max
end
puts ans
