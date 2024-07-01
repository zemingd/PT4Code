a=gets.chomp.to_i
b=gets.chomp.split.map(&:to_i)

c=0
d=0
f=b[0]
a.times do 
  if f>=b[c]
    d+=1
  end
  f=b[c]
  c+=1
end
puts d