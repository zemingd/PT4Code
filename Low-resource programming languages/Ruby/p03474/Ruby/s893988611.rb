a,b,s=`dd`.split
a,b=[a,b].map &:to_i
puts s.size==a+b+1&&s[a]=="-"? :Yes : :No