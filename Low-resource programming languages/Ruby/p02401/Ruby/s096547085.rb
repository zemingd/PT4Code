ARGF.each_line do |line|
    a, x, b = line.split
    break if x == "?"
    z = a x b
    puts z
end