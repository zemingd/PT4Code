numbers = readlines.map(&:chomp).map.with_index(1){ |num, i|
    break if num == "0"
    puts "Case #{i}: #{num}"
}
