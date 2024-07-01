n=gets.to_i
d=gets.split.map(&:to_i)
c=0
n.times do |i|
  i.times do |j|
    c+=d[i]*d[j]
  end
end
puts c