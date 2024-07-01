a,b=gets.split.map(&:to_i)
c=0
20.times do |i|
  if  (i * a - i+1) >= b then
    c=i
    break
  end
end
print c
