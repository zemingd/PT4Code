i = 0
STDIN.each_line do |line|
    tokens = line.chomp!.split.map!(&:to_i)
    return if tokens[0] == 0
    i += 1
    puts "Case #{i}: #{tokens[0]}"
end