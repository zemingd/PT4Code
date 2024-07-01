args = gets.split(" ").map(&:to_i)

if (args[1] < args[0])
    puts 0
elsif((args[1] / args[0]) < args[2])
    puts args[1] / args[0]
else
    puts args[2]
end