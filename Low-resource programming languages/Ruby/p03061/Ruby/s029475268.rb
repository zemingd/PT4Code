# source: http://drken1215.hatenablog.com/entry/2019/04/27/224100_1
# verify: https://atcoder.jp/contests/abc125/tasks/abc125_c
class SegmentTree
  # n is the size of array or array itself
  def initialize(n, unity, &func)
    raise ArgumentError if !n || !unity || !block_given?
    @size_r = 1
    @n = (n.is_a?(Array) ? n.size : n)
    while @size_r < @n
      @size_r <<= 2
    end
    @func = func
    @unity = unity
    @data = Array.new(@size_r * 2, @unity)
    if n.is_a?(Array)
      @n.times { |i| @data[i + @size_r] = n[i] }
      self.build()
    end
  end

  # set value at index, index is 0-indexed
  def set(index, value)
    raise IndexError if index >= @n
    @data[index + @size_r] = value
  end

  def build
    (@size_r - 1).downto(1) do |k|
      @data[k] = @func.call(@data[k * 2], @data[k * 2 + 1])
    end
  end

  # update the previous value at index to value, index is 0-indexed
  def update(index, value)
    raise IndexError if index >= @n
    index += @size_r
    @data[index] = value
    index >>= 1
    while index > 0
      @data[index] = @func.call(@data[index * 2], @data[index * 2 + 1])
      index >>= 1
    end
    true
  end

  # get [a, b), a and b are 0-indexed
  def get(a, b)
    raise IndexError if a > @n || b > @n || a > b
    vleft = vright = @unity
    left = a + @size_r
    right = b + @size_r
    while (left < right)
      if (left & 1) == 1
        vleft = @func.call(vleft, @data[left])
        left += 1
      end
      if (right & 1) == 1
        right -= 1
        vright = @func.call(@data[right], vright)
      end
      left >>= 1
      right >>= 1
    end
    return @func.call(vleft, vright)
  end

  def [](k)
    @data[@size_r + k]
  end
end

# __END__
N = gets.to_i
a = gets.split.map(&:to_i)

seg = SegmentTree.new(a, 0) { |x, y| x.gcd(y) }
ans = 0
N.times do |i|
  left = seg.get(0, i)
  right = seg.get(i + 1, N)
  ans = [ans, left.gcd(right)].max
end

puts ans
