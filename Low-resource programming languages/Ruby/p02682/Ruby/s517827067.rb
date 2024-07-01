def lscan; gets.split.map(&:to_i); end

a,b,c,k = lscan

x = 0
na = [a,k].min
x += na
k -= na
nb = [b,k].min
x += 0
k -= nb
nc = [c,k].min
x -= nc
k -= nc

p x