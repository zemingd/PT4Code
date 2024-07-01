a, b, c, d = gets.chomp.split(' ').map{|v| v.to_i}
count = 0
(a..b).each {|i|
    count += 1 if i%c != 0 and i%d != 0
}

puts count