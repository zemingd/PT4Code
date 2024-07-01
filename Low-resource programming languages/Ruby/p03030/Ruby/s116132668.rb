n = gets.chomp.to_i

arr = n.times.map { |i|
    p, s = gets.chomp.split(" ")
    [i + 1, p, s.to_i]
}

arr.sort_by! { |row|
    [row[1], -row[2]]
}.each { |row|
    puts row[0]
}