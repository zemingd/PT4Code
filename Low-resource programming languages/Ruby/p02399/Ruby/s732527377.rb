a,b = gets.split(" ").map(&:to_f)
d = (a/b).to_i
r = (a%b).to_i
f = a/b
puts([d,r,f].join(" "))