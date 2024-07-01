N=gets.to_i
a = gets.chomp.split.map(&:to_i)
p=a[0]
for i in 1...N
s = s*p[i]
end
if s>10**18
s=-1
end
puts s