# Rated for Me
R = gets.chomp.to_i
if R < 1200
    puts "ABC" 
elsif R < 2800 && R >= 1200
    puts "ARC"
else
    puts "AGC"
end