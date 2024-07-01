n, m, l = gets.split.map(&:to_i)

matrix_A = []
matrix_B = []
matrix_C = []

n.times{
    matrix_A.push(gets.split.map(&:to_i))
}

m.times{
    matrix_B.push(gets.split.map(&:to_i))
}

n.times{|i|
    line = []
    l.times{|j|
        sum = 0
        m.times {|k|
            sum += matrix_A[i][k] * matrix_B[k][j]
        }
        line.push(sum)
    }
    matrix_C.push(line)
}


n.times{|i|
    puts(matrix_C[i].join(" "))
}
