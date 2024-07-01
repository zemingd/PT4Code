n = gets.to_i
a = (n.to_s).split("").map(&:to_i)
if n%a.sum==0
  puts "Yes"
else
  puts "No"
end