r = gets.to_i

if r < 1200
    puts "ABC"
elsif r >= 1200 and 2799 >= r
    puts "ARC"
elsif r >= 2800
    puts "AGC"
end