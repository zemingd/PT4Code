n,k=gets.chomp.split.map(&:to_i)
h=gets.chomp.split.map(&:to_i).sort.reverse
ans=0
k.upto(n-1) do |i|
  ans+=h[i]
end
puts ans
