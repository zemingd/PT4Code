N = gets.to_i
As = gets.split.map(&:to_i)

f = ->(n){n > 1 ? n*(n - 1)/2 : 0}
h = As.group_by(&:itself).map{|k, v| [k, v.size]}.to_h
s = h.values.inject(0){|r, n| r + f[n]}
As.each{|a| puts s - f[h[a]] + f[h[a] - 1]}