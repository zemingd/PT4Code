while line = gets
    line.chomp
    puts line.split(//).reverse.join("")
end