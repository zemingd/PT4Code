A=gets.to_i
B=gets.to_i
C=gets.to_i
X=gets.to_i
res = 0

(0..A).to_a.each{|i|
    (0..B).to_a.each{|j|
        (0..C).to_a.each{|k|
            if 500*i + 100*j + 50*k == X
                res+=1
            end
        }
    }
}

p res
