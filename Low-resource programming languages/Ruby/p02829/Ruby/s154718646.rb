n=[1,2,3]
a=gets.split(" ").map(&:to_i)
b=gets.split(" ").map(&:to_i)
n.delete(a[0])
n.delete(b[0])
puts n