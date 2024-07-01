N = gets.to_i
X = gets.split.map{|i|i.to_i}
min = 10 ** 7
(1..100).each{|x|
    cost = X.inject(0){|r, i| r + (x - i) ** 2}
    if cost < min
        min = cost
    end
}
puts min
