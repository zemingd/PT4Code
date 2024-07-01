require "prime"
def d(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end
n=gets.to_i
a=gets.split.map(&:to_i)
if a.include?(1)
  puts a.count(1)==1 ? 1 : 0
end
l=[0]*1000001
a.each do |aa|
  l[aa]+=1
end
ans=0
a.each do |aa|
  c=0
  d(aa).each do |ap|
    c+=l[ap]
  end
  ans+=1 if c==1
end
puts ans
