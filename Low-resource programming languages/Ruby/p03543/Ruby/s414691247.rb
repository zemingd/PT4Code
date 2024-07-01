n=gets.to_i
a=n/10
b=n%1000
if a%111 == 0 || b%111 == 0
  puts "Yes"
else
  puts "No"
end