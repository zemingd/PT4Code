n,k=gets.chomp.split(" ").map{|s| s.to_i}
p=0.0
for i in 1..n
  t=i
  u=1.0
  while t<k
    t=t*2
    u=u/2
  end
  p+=u
end
puts p/n