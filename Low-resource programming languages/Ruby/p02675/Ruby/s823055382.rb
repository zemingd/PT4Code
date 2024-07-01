N = gets.to_i
if N % 10 == 3 then
  puts "bon"
elsif N%10==0 or N%10==1 or N%10==6 or N%10==8
  puts "pon"
else
  puts "hon"
end