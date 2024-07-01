a=gets.strip.split.map(&:to_i)
n=[]
n << (a[0]-a[1]).abs+(a[1]-a[2]).abs
n << (a[0]-a[2]).abs+(a[2]-a[1]).abs
n << (a[1]-a[0]).abs+(a[0]-a[2]).abs
n << (a[1]-a[2]).abs+(a[2]-a[0]).abs
n << (a[2]-a[0]).abs+(a[0]-a[1]).abs
n << (a[2]-a[1]).abs+(a[1]-a[0]).abs
puts n.min