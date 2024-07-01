n=gets.chomp.to_i
h=gets.chomp.split(" ").map{|s| s.to_i}
ans=0
max=0
for i in 0..n-1
  if max <= h[i]
    ans+=1
    max=h[i]
  end
end
puts ans
