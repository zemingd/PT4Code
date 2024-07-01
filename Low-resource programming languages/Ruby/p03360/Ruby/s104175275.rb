xs = gets.split.map(&:to_i)
k = gets.to_i
m = xs.max
xs[xs.index(m)]=0
puts(m*2**k+xs.reduce(:+))