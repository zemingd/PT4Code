a=gets.chomp.split.map(&:to_i)
b=gets.chomp.split.map(&:to_i)
c=0
b.each do |x|
  c+=x
end
f=0
b.each do |x|
  if x>=c/(a[1]*4)
    f+=1
  end
end
if f>=a[1]
  puts "Yes"
else puts "No"
end