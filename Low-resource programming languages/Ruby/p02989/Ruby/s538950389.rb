a = (gets.to_i)/2
b = gets.split.map(&:to_i).sort
c = b[a-1]
d = b[a]
p d - c