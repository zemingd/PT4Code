x=gets.to_i
i=100
y=0
loop do
  y+=1
  i=(i*1.01).floor
  break if i>=x
end
p y
