mozi1 = gets.chomp.split("")
mozi2 = gets.chomp.split("")

mozi1.sort
mozi2.sort.revercemozi1 = gets.chomp.split("")
mozi2 = gets.chomp.split("")

mozi1 = mozi1.sort.join
mozi2 = mozi2.sort.reverse.join

if mozi1 < mozi2
    puts "Yes"
else 
    puts "No"
end