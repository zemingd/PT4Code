n=gets.to_i
p = gets.split(' ').map(&:to_i)
q = gets.split(' ').map(&:to_i)

a = (1..n).to_a
a=a.permutation.to_a
puts (a.index(p)-a.index(q)).abs
#puts a[0]