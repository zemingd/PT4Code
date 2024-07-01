a=gets.chomp.split.map(&:to_i)
b=a[0]/a[1]
if a[0]%a[1]>0
  b+=1
end
puts b