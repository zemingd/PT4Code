S = gets.chomp
T = gets.chomp.split("")

T.pop
if S == T.join("")
    puts "Yes"
else
    puts "No"
end
 
