old,price=gets.chomp.split(" ").map{|n|n.to_i}
if old>=12 then
  puts price
elsif old>=6 then
  puts price/2
else
  puts 0
end