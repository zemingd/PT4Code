n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
l=a.inject(&:lcm)
p l>m || a.any?{ |e| e%2==1 }? 0: (m+l/2)/l
