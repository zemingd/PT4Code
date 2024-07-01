n,m=gets.split.map &:to_i
s=[]
ans=0
n.times do |i|
  k,*s[i]=gets.split.map &:to_i
end
(1..m).to_a.each{|j|
  dame=0
  for i in 0..s.size-1
    if s[i].include?(j)
    else
      dame=1
    end
  end
  ans+=1 if dame==0
}
puts ans
