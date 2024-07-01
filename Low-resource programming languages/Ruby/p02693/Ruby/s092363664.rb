K=gets.to_i
a,b=gets.split.map &:to_i
ans=false
[*a..b].each do |i|
  if i%K==0
    ans=true
    break
  end
end
puts ans ? "OK" : "NG"
   