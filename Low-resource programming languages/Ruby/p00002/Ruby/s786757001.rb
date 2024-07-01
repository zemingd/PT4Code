while line = gets
    a, b = line.chomp.split.map(&:to_i)
    puts (a + b).to_s.size
end