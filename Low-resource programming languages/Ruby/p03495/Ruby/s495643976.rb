N,K = gets.split.map(&:to_i)
h = {}
gets.split.map(&:to_i).each{ |a| h[a] = (h[a] || 0) + 1 }
p N - h.keys.sort_by{ |k| -h[k] }[0...K].map{ |k| h[k] }.inject(:+)
