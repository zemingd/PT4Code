n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
l=a.inject(:lcm)
p a.any?{ |i| l/i%2==0}? 0: (m+l/2)/l