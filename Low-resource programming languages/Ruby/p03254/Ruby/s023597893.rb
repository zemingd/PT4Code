n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
ans=0
a.each{|v|
  break if v>x
  x-=v
  ans+=1
}

ans-=1 if ans==n && x>0

puts ans