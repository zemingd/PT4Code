def check(x, y)
  2.times do |z|
    4.times do
      return true if x == y
      a, b, c, d, e, f  = x
      x = z.zero? ? [e, a, c, d, f, b] : [d, b, a, f, e, c]
      h = x
      4.times do
        i, j, k, l, m, n = h
        h = [i, k, m, j, l, n]
        return true if h == y
      end
    end
  end
  false
end
 
g, *h = $<.map{|i| i.chomp.split}
g[0].to_i.times do |j|
  (j+1).upto(g[0].to_i - 1) do |k|
    (puts 'No')^exit if check(h[j], h[k])
  end
end
puts 'Yes'