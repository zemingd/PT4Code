N = gets.chomp.to_i

m = N % 10

if [2,4,5,7,9].include?(m) then
  puts "hon"
elsif [0,1,6,8].include?(m) then
  puts "pon"
else
  puts "bon"
end