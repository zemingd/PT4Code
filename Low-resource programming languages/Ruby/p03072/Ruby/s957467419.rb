n=gets.to_i 
h=gets .split .map &:to_i 
c=0
for i in 0...n
  u=1
  for j in 0...i
    if h[j]>h[i]
      u=0
      end
    end
  c+=u
end
puts c