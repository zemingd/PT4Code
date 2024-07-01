x,n=gets.split.map &:to_i
if n == 0
  puts x
  exit 
end
p=gets.split.map &:to_i
zettai=999
ans=999
hash={}
[*(-100..200)].each do |i|
  next if p.include?(i)
  zettai = (x-i).abs
  hash[i]=(zettai)
end
puts hash.key(hash.values.min)
