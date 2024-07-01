s = gets.chomp.split("/").map(&:to_i)
if s[0] < 2019
    puts "Heisei"
elsif s[0] == 2019 && s[1] < 4 
    puts "Heisei"
elsif s[0] == 2019 && s[1] == 4 && s[2] <= 30
    puts "Heisei"
else
    puts "TBD"
end
