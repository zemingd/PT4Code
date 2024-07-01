a,b,c,k=gets.split.map(&:to_i)

s = [a,k].min
k -= [a,k].min
k -= [b,k].min
s -= [c,k].min
puts s