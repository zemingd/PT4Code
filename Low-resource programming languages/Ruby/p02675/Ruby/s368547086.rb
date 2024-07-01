n = gets.chomp[-1].to_i
if n == 2 or n==4 or n==5 or n==7 or n==9
  puts 'hon'
elsif n == 0 or n==1 or n==6 or n==8
  puts 'pon'
else
  puts 'bon'
end
