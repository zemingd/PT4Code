N, *Ws = readlines.map(&:chomp)

puts Ws.uniq.size == N.to_i && Ws.each_cons(2).all?{|a, b| a[-1] == b[0]} ? 'Yes' : 'No'