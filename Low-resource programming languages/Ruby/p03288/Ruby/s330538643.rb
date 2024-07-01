n = gets.chomp.to_i
if n <= 1199
    puts "ABC"
elsif 1199 < n && n <= 2799
    puts "ARC"
else 
    puts "AGC"
end