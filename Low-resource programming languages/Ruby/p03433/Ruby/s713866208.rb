
n=gets.chomp.to_i
a=gets.chomp.to_i

if n%500==0
    puts "Yes"
elsif n%500<=a
    puts "Yes"
else
    puts "No"
end