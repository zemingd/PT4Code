a,b,c=gets.split.map &:to_i
c-=a+b
a*=b<<2
puts a<c*c ? :Yes: :No