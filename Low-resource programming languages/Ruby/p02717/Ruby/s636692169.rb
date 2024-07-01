#n,k=gets.split(' ').map(&:to_i)
h=gets.split(' ').map(&:to_i)
#tajigen = Array.new(4) { Array.new(2,0) }
a=Array.new(3)
a[0] = h[2]
a[1] = h[0]
a[2] = h[1]

puts a
