n,m,l = gets.chomp.split(" ").map &:to_i

matA = Array.new
n.times { matA << (gets.chomp.split(" ").map &:to_i) }

matB = Array.new
m.times { matB << (gets.chomp.split(" ").map &:to_i) }

matC = Array.new
n.times { |r|
    l.times { |c|
        f = 0
        m.times { |i| f += matA[r][i]*matB[i][c] }
        matC << f
    }
}

matC.length.times { |i|
    puts if i%n == 0 and i != 0
    print " " if i%n != 0
    print matC[i]
}
puts