s = gets.chomp.chars
if s == ['R','R','R']
    puts 3
    exit
elsif s == ['S','R','R'] || s == ['R','R','S']
    puts 2
    exit
elsif s == ['S','S','S']
    puts 0
    exit
else
    puts 1
    exit
end