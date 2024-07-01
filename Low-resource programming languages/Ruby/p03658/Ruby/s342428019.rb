N,K,*rest = $stdin.read.split.map(&:to_i)
p rest.sort.last(K).inject(:+)