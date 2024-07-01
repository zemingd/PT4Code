line = gets.chomp.split(" ").map(&:to_i)

if line[0] < line[1]
    puts 0
else
    puts 10
end
