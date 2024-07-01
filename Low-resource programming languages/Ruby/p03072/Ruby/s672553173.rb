n=gets.chomp.to_i
h=gets.chomp.split.map(&:to_i)
c=1
max=h[0]
for i in 1..n-1
  c+=1 if h[i]>=max
  max = [max,h[i]].max
end
puts c
