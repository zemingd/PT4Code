N, M = gets.chomp.split().map(&:to_i)
X = gets.chomp.split().map(&:to_i).sort

X_pad = X.map.with_index(1) { |x, i| X[i] - x if X[i] }.compact
l = X[-1] - X[0] 
exc_x = X_pad.empty? ? 0 : X_pad.sort[-(N-1)..].sum
puts l - exc_x