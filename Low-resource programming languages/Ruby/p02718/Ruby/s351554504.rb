n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort.reverse
s=a.inject(&:+)
puts (a[0,m].all?{|x| 4*m*x >= s } ? "Yes" : "No")