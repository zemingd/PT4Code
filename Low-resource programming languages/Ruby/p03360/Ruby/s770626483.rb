a=gets.split.map(&:to_i)
k=gets.to_i
a.sort!
cnt=2*k
puts a[0]+a[1]+a[2]*cnt
