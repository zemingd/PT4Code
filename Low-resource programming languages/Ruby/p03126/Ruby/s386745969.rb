n,m=gets.chomp.split(" ").map{|s| s.to_i}
ans=(1..m).to_a
p ans
for i in 0..n-1
  a=gets.chomp.split(" ").map{|s| s.to_i}
  a.shift
  ans=ans&a
end
p ans.size