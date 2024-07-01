n=gets.chars[-1].to_i
if n==3
  puts "bon"
elsif n==0 || n==1 || n==6 || n==8
  puts "pon"
elsif n==2 || n==4 || n==5 || n==7 || n==9
  puts "hon"
end