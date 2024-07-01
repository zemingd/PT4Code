x, a, b = readline.split.map(&:to_i)
if a > b
    puts "delicious"
elsif a < b && x > b
    puts "safe"
elsif a < b && x < b
    puts "dangerous"
end