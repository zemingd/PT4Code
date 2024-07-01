n=gets.to_i
s=gets.split.map &:to_i
ans=0
s.each{|x|
amari=0
i=21
while amari==0
  amari=x%2
  x=x/2
  i+=1
  ans+=1 if amari==0
end
}
puts ans
