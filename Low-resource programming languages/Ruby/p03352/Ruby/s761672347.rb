x=gets.to_i
max=0
9.times do|i|
  a=(((x)**(1/(i+2).to_f)).floor)**(i+2)
  max = max>a ? max : a
  p a
end
p max
