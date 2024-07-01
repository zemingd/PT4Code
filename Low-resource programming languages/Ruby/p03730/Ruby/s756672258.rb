a,b,c=gets.split.map &:to_i
s=[]
100.times do|i|
  x=a*(i+1)%b
  if x==c
    puts :Yes
    exit
  elsif s.count(x)==0
    s[s.size]=a*(i+1)%b
  else
    puts :No
    exit
  end
end
