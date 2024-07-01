a = gets.split.map(&:to_i).sort
num = a[1]
a[1]-=1
num += a.max
puts num