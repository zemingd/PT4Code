a = []
a = gets.split.map(&:to_i)
b = []
b = gets.split.map(&:to_i)
puts a[0]*a[1]-b[0]*a[1]-b[1]*a[0]+b[0]*b[1]