x,k,d=gets.split.map(&:to_i)
for i in 1..k
  if x>=0
    x-=d
  else
    x+=d
  end
end
puts x
