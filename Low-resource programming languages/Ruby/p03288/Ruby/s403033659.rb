def ascan; gets.split.map(&:to_i); end

r = gets.to_i

if r <= 1199
    puts "ABC"
elsif r <= 2799
    puts "ARC"
else
    puts "AGC"
end