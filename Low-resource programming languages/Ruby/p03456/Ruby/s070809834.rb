a = gets.split
n = (a[0]+a[1]).to_i
m = (n**0.5).to_i
if n == m*m then
  puts "Yes"
else
  puts "No"
end