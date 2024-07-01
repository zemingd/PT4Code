a=gets.split.map(&:to_i).sort
gets.to_i.times do
  a.sort!
  a[2]*=2
end
p a.inject(:+)