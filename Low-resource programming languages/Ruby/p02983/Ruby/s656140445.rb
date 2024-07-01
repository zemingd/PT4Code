io = STDIN
ans=2019
ll,rr=io.gets.split.map(&:to_i)
a=ll%2019
b=rr%2019
l=[a,b].min
r=[a,b].max
if a==b
  p 0
else
  l.upto(r-1) do |i|
    (i+1).upto(r) do |j|
      ans=[ans,(i*j)%2019].min
    end
  end
  p ans
end
