n1 = []
(0..9).each { |x| n1[x] = 1 }
(10..50).each { |x| n1[x] = 0 }

n2 = []
(0..50).each { |x|
    n2[x] = 0
    (0..9).each {|y|
        n2[x] += n1[x - y] || 0
    }
}

n3 = []
(0..50).each {|x|
    n3[x] = 0
    (0..9).each {|y|
        n3[x] += n2[x - y] || 0
    }
}

n4 = []
(0..50).each {|x|
    n4[x] = 0
    (0..9).each {|y|
        n4[x] += n3[x - y] || 0
    }
}

while n = gets
    puts n4[n.to_i]
end