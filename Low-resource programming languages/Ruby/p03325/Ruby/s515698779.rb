io = STDIN
n=io.gets.to_i
a=io.gets.split.map(&:to_i)
def div2cnt(x)
  cnt=0
  while (q,r=x.divmod(2);q>=1)
    break if r>0
    cnt+=1
    x=q
  end
  cnt
end
cnt=0
a.each do |i|
  cnt+=div2cnt(i)
end
puts cnt
