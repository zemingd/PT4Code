def check(x, y)
  2.times do |z|
    4.times do
      return 0 if x == y
      a, b, c, d, e, f  = x
      x = z.zero? ? [e, a, c, d, f, b] : [d, b, a, f, e, c]
      c = x
      4.times do
        i, j, k, l, m, n = c
        c = [i, k, m, j, l, n]
        return 0 if c == y
      end
    end
  end
  1
end

ar = $<.map(&:chomp).map(&:split).sort.drop(1)
re = []
(ar.size - 1).times do |q|
  re << check(ar[q], ar[q+1])
end
p re
puts re.reduce(:+) == re.size ? 'Yes' : 'No'