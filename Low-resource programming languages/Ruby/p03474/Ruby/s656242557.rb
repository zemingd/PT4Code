a,b,s=`dd`.split
a,b=[a,b].map &:to_i
puts s.size==a+b+1&&s[a]=="-"&&s.count("-")==1? :Yes : :No