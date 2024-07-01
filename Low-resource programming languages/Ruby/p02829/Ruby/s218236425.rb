a = gets.chomp.to_i
b = gets.chomp.to_i
#a = gets.chomp.split().map(&:to_i)

if a==1 && b ==2
  puts 3
elsif a==2 && b ==1
  puts 3
elsif a==1 && b ==3
  puts 2
elsif a==3 && b ==1
  puts 2
else
  puts 1
end
