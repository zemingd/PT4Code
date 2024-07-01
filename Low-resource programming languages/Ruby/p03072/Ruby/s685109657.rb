n=gets.chomp.to_i
a=gets.chomp.split.map(&:to_i)
c=1
for i in 1..(a.length-1)
  c+=1 if a[i-1]<=a[i]
end
puts c