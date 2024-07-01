n,m=gets.chomp.split.map(&:to_i)
a=gets.chomp.split.map(&:to_i)
a.sort!.reverse!
s=a.inject(:+)
puts a[m-1]*(4*m)>=s ? "Yes" :  "No"