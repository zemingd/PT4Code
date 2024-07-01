a=gets.chomp
b=gets.chomp
count=0
3.times do |i|
if a[i]==b[i]
  count+=1
end
end
puts count