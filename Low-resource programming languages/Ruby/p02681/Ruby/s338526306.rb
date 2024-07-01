x=gets.chomp
y=gets.chomp
size=x.size
for i in 0..size-1
  if x[i]!=y[i]
    dame=1
  end
end
if dame==1
  puts "No"
else
  puts "Yes"
end
