class BIT
  def initialize(n)
    @tree = Array.new(n + 1, 0)
  end

  def add(i, diff)
    while i < @tree.size
      @tree[i] += diff
      i += (i & -i)
    end
  end

  def sum(i)
    t = 0
    while i > 0 do
      t += @tree[i]
      i -= (i & -i)
    end
    return t
  end
end

n, k = gets.chomp.split.map(&:to_i)
ps = gets.chomp.split.map(&:to_i)
es = ps.map do |p|
  p * (p + 1) / 2.0 * (1.0 / p)
end

bit = BIT.new(n)
1.upto(n) do |i|
  bit.add(i, es[i - 1])
end

m = 0
1.upto(n - k) do |i|
  t = bit.sum(i + k) - bit.sum(i)
  m = [t, m].max
end

puts m