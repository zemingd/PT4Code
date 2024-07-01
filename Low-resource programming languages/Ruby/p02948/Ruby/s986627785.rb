N, M = gets.split.map(&:to_i)
S = N.times.map { gets.split.map(&:to_i) }.sort_by{|v| -v[1] }
ufs = Array.new(M + 1, &:itself)

class << ufs
  def set_right(l, r)
    loop do
      break if l >= r
      m = self[l]
      self[l] = r
      l = m
    end
    r
  end

  def right(l)
    loop do
      return self.size if l >= self.size
      return l if l == self[l]
      l = self[l]
    end
  end

  def next_clear_index(l)
    r = right(l)
    r >= self.size ? nil : r
  end

  def extend_seq!(l)
    r = next_clear_index(l)
    set_right(l, r + 1) if r
  end
end

puts S.inject(0){|s, (a, b)| ufs.extend_seq!(a) ? s + b : s }

