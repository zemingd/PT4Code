a,b,c=gets.split.map(&:to_i)
if a+b==c || a+c==b || c+b==a
  puts "Yes"
else
  puts "No"
end