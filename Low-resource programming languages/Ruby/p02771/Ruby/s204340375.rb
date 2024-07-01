a,b,c=gets.split(" ").map(&:chomp)

if a==b && a==c && b==c
  puts "No"
elsif a!=b && a!=c && b!=c
  puts "No"
else
  puts "Yes"
end