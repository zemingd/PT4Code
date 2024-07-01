(X, Y, Z, K), As, Bs, Cs = readlines.map{|l| l.split.map(&:to_i)}

as, bs, cs = [As, Bs, Cs].map{|xs| [nil] + xs.sort.reverse.take(K)}
puts [*1 .. X].product([*1 .. Y], [*1 .. Z]).select{|i, j, k| i*j*k <= K}.map{|i, j, k| as[i] + bs[j] + cs[k]}.sort.reverse.take(K)