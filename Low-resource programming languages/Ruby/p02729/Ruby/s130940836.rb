N,M = gets.split.map(&:to_i)

f1 = (1..N).to_a.combination(2).to_a.size
f2= (1..M).to_a.combination(2).to_a.size

p f1+f2