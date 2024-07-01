n = gets.chomp.tr(" ","").to_i
s = ((n**(1/1.99)).to_i)**2
b = ((n**(1/2.01)).to_i)**2
if n == s || n == b then
  puts "YES"
else
  puts "NO"
end