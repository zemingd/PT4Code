(N, K), Hs = readlines.map{|l| l.split.map(&:to_i)}

puts Hs.sort.reverse.drop(K).inject(:+) || 0