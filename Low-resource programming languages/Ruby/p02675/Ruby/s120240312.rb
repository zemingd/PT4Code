N = gets.chomp.split("")

if N[-1] == "3"
    puts 'bon'
elsif N[-1] == "0" || N[-1] == "1" || N[-1] == "6" || N[-1] == "8"
    puts 'pon'
else
    puts 'hon'
end
