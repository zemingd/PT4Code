a=gets.chomp.split("")
b=gets.chomp.split("")

a=a.sort.join
b=b.sort.reverse.join

if a<b
    puts "Yes"
else puts "No"
end
    
