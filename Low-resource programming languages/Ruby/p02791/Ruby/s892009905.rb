a=gets.chomp.to_i
b=gets.chomp.split.map(&:to_i)
c=0
d=0
(a-1).times do 
  if b[c]>b[c+1]
    d+=1
  end
  c+=1
end
puts d+1