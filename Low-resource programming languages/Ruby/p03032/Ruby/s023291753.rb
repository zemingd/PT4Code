N, K = gets.split.map(&:to_i)
Vs = gets.split.map(&:to_i)
puts (0..([N,K].min)).map{|l|
    (0..([N-l, K-l].min)).map{|r|
        ts = (Vs[0...l] + Vs.reverse[0...r]).sort
        f = [K - l - r, l+r].min # number of item can be dropped 
        ts[0...f].select{|n| n>0}.sum + ts[f...(l+r)].sum
    }.max
}.max