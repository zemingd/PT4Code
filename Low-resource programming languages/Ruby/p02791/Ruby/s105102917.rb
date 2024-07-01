a=gets.chomp.to_i
b=gets.chomp.split.map(&:to_i)

c=0
d=0
f=b[0]
a.each do |x|
  if f>=x
    d+=1
  f=x
end
puts d