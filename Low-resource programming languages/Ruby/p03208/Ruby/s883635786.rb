io = STDIN
n,k=io.gets.split.map(&:to_i)
ar=n.times.map{io.gets.to_i}.sort
ans=Float::INFINITY
ar.each_cons(k) do |a|
  ans=a.last-a.first   if a.last-a.first < ans
end
p ans
