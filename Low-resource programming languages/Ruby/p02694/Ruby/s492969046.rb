X=gets.to_i()
p=100
count=0
while p<=X do
  p=(p*1.01).floor
  count=count+1
end
puts(count)
