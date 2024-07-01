N = gets.to_i
d = gets.split.map &:to_i
sum = 0
d.combination(2){|e|sum += e[0]*e[1]}
p sum