N = gets.to_i
A = gets.to_i
 
change = N % 500
if change <= A
  puts "Yes"
else
  puts "No"
end