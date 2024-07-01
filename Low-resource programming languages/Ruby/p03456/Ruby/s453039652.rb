n = gets.chomp.tr(" ","").to_i
s = ((n**(1/2.0)).to_i)**2
if n == s then
  puts "Yes"
else
  puts "No"
end