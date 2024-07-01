a,b,c = gets.chomp.split.map(&:to_i)

if(a==b+c || b==a+c || c==a+b)
  puts "Yes"
else
  puts "No"
end