x,y = gets.chomp.split
if x.hex == y.hex 
    puts "="
else
    puts x.hex < y.hex ? "<" : ">"
end