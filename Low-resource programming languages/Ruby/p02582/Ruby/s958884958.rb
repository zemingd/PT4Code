s= gets.chomp
if s == "RRR"
    puts 3
elsif s =~/RR/
    puts 2
elsif s=~/R/
    puts 1
else
    puts 0
end

