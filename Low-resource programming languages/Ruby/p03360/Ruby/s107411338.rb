a=gets.split.map(&:to_i).sort
k=gets.to_i
k.times do
  a[2]*=2
end
p a.inject(:+)