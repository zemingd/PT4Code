A, B, C, X = 4.times.map{gets.to_i}
ans = 0
0.upto(A){|a| 0.upto(B){|b| 0.upto(C){|c|
    ans += 1 if a * 500 + b * 100 + c * 50 == X
    }}}
puts ans