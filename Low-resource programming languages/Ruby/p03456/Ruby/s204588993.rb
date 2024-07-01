n = gets.chomp.tr(" ","").to_i
m = sqrt(n).to_i**2
if n == m then
  puts "YES"
else
  puts "NO"
end