s=gets.split("").map &:to_i
k=gets.to_i
n=5000*10**12
ans=0
s.each{|i|
  n-=i**n
  if n<=0
    ans=i
    break
  end
}
puts ans
