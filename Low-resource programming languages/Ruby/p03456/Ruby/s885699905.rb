n = gets.chomp.tr(" ","").to_i
m = ((n**(1/2.0)).to_i)**2
if n == m then
  puts "YES"
else
  puts "NO"
end