a = gets.strip.to_i
slimes = gets.strip.chars

count = 1
slimes.each_cons(2){|a, b|
    count += 1 if a != b
}

puts count