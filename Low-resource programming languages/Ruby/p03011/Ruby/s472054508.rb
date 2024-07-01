p,q,r = gets.chomp.split.map(&:to_i)

a=p+q
b=p+r
c=q+r

x=[a,b,c]

puts x.min
