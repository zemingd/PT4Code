def check(x, y)
  2.times do |z|
    4.times do
      return true if x == y
      a, b, c, d, e, f  = x
      x = z.zero? ? [e, a, c, d, f, b] : [d, b, a, f, e, c]
      c = x
      4.times do
        i, j, k, l, m, n = c
        c = [i, k, m, j, l, n]
        return true if c == y
      end
    end
  end
  false
end

g = $<.map{|h| h.chomp.split}.drop(1)
g.size.times do |x|
  (x+1).upto(g.size - 1) do |y|
    (puts 'No')^exit if check(g[x], g[y])
  end
end
puts 'Yes'