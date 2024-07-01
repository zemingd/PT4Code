a,b = gets.chop.split(" ").map(&:to_i)
if a%2==1 && b%2==1
  puts "Yes"
else
  puts "No"
end