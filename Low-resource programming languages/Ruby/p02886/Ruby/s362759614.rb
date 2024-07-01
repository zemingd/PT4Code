n=gets.to_i
d=gets.split.map(&:to_i)
s=0
d.combination(2){|i,j|s+=i*j}
puts s