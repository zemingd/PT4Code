x=gets.to_i
i=100
c=0
while i < x do
  i = (i*1.01).floor
  c += 1
end
puts c