a,b,c = gets.chomp.split("/").map(&:to_i)

if a < 2019
    puts "Heisei"
elsif a > 2019
    puts "TBD"
else
    # a = 2019
    if b <= 4
        puts "Heisei"
    else
        puts "TBD"
    end
end