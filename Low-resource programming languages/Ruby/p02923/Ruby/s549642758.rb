n=gets.to_i
h=gets.split.map &:to_i
c=0
(n-1).times do |i|
  c+=1 if h[i]>=h[i+1]
end
puts c
