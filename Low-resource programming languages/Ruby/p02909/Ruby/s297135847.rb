s = gets.chomp
a = ['Sunny', 'Cloudy', 'Rainy']
if s == a[0]
  puts a[1]
elsif s == a[1]
  puts a[2]
else
  puts a[0]
end