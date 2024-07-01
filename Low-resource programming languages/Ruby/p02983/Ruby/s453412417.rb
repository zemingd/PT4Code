io = STDIN
ans=2019
l,r=io.gets.split.map(&:to_i)
l.upto(r-1) do |i|
  (i+1).upto(r) do |j|
    ans=[ans,(i*j)%2019].min
  end
end
p ans
