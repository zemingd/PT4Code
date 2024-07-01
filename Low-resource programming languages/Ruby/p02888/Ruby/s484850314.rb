n=gets.to_i
ls=gets.split.map(&:to_i).sort
ans=0
[*0..n-1].combination(2) do |i,j|
  absum=ls[i]+ls[j]
  ans+=ls[j+1..n-1].count{|v| v<absum}
end
puts ans
