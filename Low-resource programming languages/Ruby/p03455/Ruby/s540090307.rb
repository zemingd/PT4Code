line = gets.split(' ').map(&:to_i)

if (line[0] * line[1]).odd?
        puts "Odd"
else
        puts "Even"
end