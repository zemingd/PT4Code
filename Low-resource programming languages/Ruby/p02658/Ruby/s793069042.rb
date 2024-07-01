N=gets.to_i
a = gets.chomp.split.map(&:to_i)
p=1
i=0
while i < N 
p = p*a[i]
i=i+1
end
if p>10**18
p=-1
end
puts p