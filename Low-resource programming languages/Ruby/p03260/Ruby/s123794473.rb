a =[]
a = gets.chomp.to_i
if (a[0] * a[1]) % 2 == 1
    puts "Yes"
else
    puts "No"
end