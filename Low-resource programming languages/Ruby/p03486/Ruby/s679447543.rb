a = gets.chomp.split("")
b = gets.chomp.split("")
x = a.sort{|a,b| a <=> b}.join
y = b.sort{|a,b| b <=> a}.join

if (x <=> y) == -1
    puts "Yes"
else
    puts "No"
end