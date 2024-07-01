N, M = gets.split.map(&:to_i)
S = N.times.map { gets.split.map(&:to_i) }.sort_by{|v| -v[1] }
bitset = Array.new(M + 1, &:itself) # a variant of Union Find Tree.

class << bitset
  def next_clear_bit(base)
    return size if base >= size
    return base if self[base] == base
    self[base] = next_clear_bit(self[base])
  end
  
  def extend_trailling_set_bits(base)
    r = next_clear_bit(base)
    return nil if r >= size
    self[r] = r + 1
    r
  end
end

puts S.inject(0){|s, (a, b)| bitset.extend_trailling_set_bits(a) ? s + b : s }

