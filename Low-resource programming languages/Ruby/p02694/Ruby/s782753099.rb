n = gets.strip.to_i
a = 0
p = 100

4000.times{|i|
    p += (p / 100)
    break if p > n
    a = i + 1
}

puts a