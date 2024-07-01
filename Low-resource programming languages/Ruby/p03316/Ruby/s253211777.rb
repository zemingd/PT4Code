s = gets.chomp.split('')
p = 0
 
s.each do |c|
  p += c.to_i
end
 
if s.to_i % p == 0 then
  puts "Yes"
else
  puts "No"
end
