n = gets.to_i
num = n.to_s.chars.reduce(0){|a,e| a+=e.to_i}
if n % num == 0
  puts "Yes"
else
  puts "No"
end