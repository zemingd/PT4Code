n = gets.to_i
list = gets.chomp.split(' ').map{|v| v.to_i}

count = 0
(1..n-2).each {|i|
    p0 = list[i-1]
    p1 = list[i]
    p2 = list[i+1]
    count += 1 if (p0 < p1 and p1 < p2) or (p0 > p1 and p1 > p2)
}

puts count