(N, K), Vs = readlines.map{|l| l.split.map(&:to_i)}

class Array
  def tp(i)
    t = self.dup
    t[i], t[i + 1] = t[i + 1], t[i]
    t
  end
end

def dq(vs, k)
  (0 .. k).flat_map do |j|
    (0 .. j).map{|i| (vs.first(i).inject(:+) || 0) + (vs.last(j - i).inject(:+) || 0)}
  end.max
end

def go(vs, k)
  return dq(vs, k) if k <= 2
  [dq(vs, k), *(0 ... N - 1).map{|i| dq(vs.tp(i), k - 2)}].max
end

puts go(Vs, K)