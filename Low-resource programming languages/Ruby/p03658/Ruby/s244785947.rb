(N, K), Ls = readlines.map{|l| l.split.map(&:to_i)}

puts Ls.sort.reverse.take(K).inject(:+)