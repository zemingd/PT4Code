p (1..5).map{gets.to_i}.permutation(5).map{|*a, b|
    t=0
    a.each{|e|
        t+=e
        t+=10-t%10 if t%10>0
    }
    t+=b
}.min
