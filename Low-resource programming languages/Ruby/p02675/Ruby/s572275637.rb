n=gets.to_i
h=n%10
if h==3
  puts "bon"
elsif [0,1,6,8].include?(h)
  puts "pon"
else
  puts "hon"
end
