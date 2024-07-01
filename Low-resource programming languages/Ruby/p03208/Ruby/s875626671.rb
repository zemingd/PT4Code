io = STDIN
n,k=io.gets.split.map(&:to_i)
ar=n.times.map{io.gets.to_i}.sort
ans=Float::INFINITY
(0..n-k).each do |i|
  diff =ar[i+k-1]-ar[i]
  ans= diff  if diff < ans
end
p ans
