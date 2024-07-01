x,a,b = gets.chomp.split(' ').map{|n| n.to_i}
e = a - b
if e >= 0
  puts "delicious"
elsif x > (e * -1)
  puts "safe"
else
  puts "dangerous"
end
