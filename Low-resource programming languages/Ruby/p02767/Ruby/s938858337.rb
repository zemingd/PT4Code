n=gets.to_i
a=gets.split.map(&:to_i)
v=a.inject(:+)/n
c=0
a.each do |aa|
  c+=(aa-v)**2
end
vv=v+1
cc=0
a.each do |aa|
  cc+=(aa-vv)**2
end
puts [c,cc].min
