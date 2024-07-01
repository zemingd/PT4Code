n=gets.to_i
a=n.times.map{gets.to_i-1}
i=0
n.times do |j|
  (puts j; exit(0)) if i==1
  i=a[i]
end
puts -1