n=gets.to_i
as=[0]+gets.split.map(&:to_i)
lgcd=[0]*(n+2)
rgcd=[0]*(n+2)

(1..n).each do |i|
  lgcd[i]=lgcd[i-1].gcd(as[i])
end
n.downto(0) do |j|
  rgcd[j]=rgcd[j+1].gcd(as[j])
end

ans=0
(1..n).each do |k|
  kgcd=lgcd[k-1].gcd(rgcd[k+1])
  ans=[ans,kgcd].max
end
puts [ans,lgcd[-2]].max
