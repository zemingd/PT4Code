a,b,c = gets.strip.split.map(&:to_i)
k = gets.to_i
s = [a,b,c].sum-[a,b,c].max
puts s+[a,b,c].max*(2**k)