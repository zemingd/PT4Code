N = gets.to_i
h = {}
gets.split.map(&:to_i).each{ |a| h[a] = (h[a] || 0) + 1 }
s = h.keys.select{ |k| h[k] >= 2 }.sort
p s.size >= 2 ? s[-2..-1].inject(:*) : 0
