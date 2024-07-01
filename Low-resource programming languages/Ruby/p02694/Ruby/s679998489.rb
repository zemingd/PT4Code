n = gets.strip.to_i
a = 0
p = 100

4000.times{|i|
    p += (p / 100)
    a = i + 1
    break if p > n
}

puts a