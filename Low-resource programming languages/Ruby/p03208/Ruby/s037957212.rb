N,K = $stdin.readline.split.map(&:to_i)
h = N.times.map {|i| $stdin.readline.to_i }.sort
puts h[0..(-K)].map.with_index {|x,i| h[i+K-1] - x }.min
