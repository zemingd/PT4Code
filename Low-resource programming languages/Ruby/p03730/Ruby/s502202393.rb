a, b, c = gets.chomp.split.map(&:to_i)

judge = (1..b).inject("NO"){|res, i|
    res = a * i % b == c ? "YES" : res
}

puts judge