N = gets.chomp.split("")

t = N.last
t = t.to_i
if (t==2) or (t==4) or (t==4) or (t==7) or (t==9)
  puts "hon"
elsif (t==0) or (t==1) or (t==6) or (t==8)
  puts "pon"
else 
  puts "bon"
end