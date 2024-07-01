io = STDIN
l,r=io.gets.split.map(&:to_i)
def calc(l,r)
  ans=2019
  l.upto(r-1) do |i|
    (i+1).upto(r) do |j|
      ans=[ans,(i*j)%2019].min
    end
  end
  p ans
end
if r-l <= 4038
  calc(l,r)
else
  p 0
end
