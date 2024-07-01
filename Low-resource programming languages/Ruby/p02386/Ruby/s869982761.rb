def check(x, y)
  2.times do |z|
    4.times do
      return true if x == y
      a, b, c, d, e, f = x
      x = z.zero? ? [e, a, c, d, f, b] : [d, b, a, f, e, c]
      g = x
      4.times do
        i, j, k, l, m, n = g
        g = [i, k, m, j, l, n]
        return true if g == y
      end
    end
  end
  false
end

h = $<.map{|i| i.chomp.split}.drop(1)
h.size.times do |j|
  (j+1).upto(h.size - 1) do |k|
    (puts 'No')^exit if check(h[j], h[k])
  end
end
puts 'Yes'

