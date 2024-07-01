N = gets.to_i
r = Hash.new{0}
1.upto(100){|x|
    1.upto(100){|y|
        1.upto(100){|z|
            n = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
            r[n] += 1
        }
    }
}
1.upto(N){|n|
    puts r[n]
}
