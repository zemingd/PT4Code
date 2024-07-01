n = gets.chomp.to_i
d = gets.chomp.split(' ').map(&:to_i).sort

n = d.length / 2
print(d[n] - d[n-1])
