a,b = gets.split(" ").map(&:to_i)
if  a >= 13 
    puts b
elsif 12 >= a ; a >= 6
    puts b/2
else
    puts 0
end