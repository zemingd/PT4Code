# source: http://drken1215.hatenablog.com/entry/2019/04/27/224100_1
# verify: https://atcoder.jp/contests/abc125/tasks/abc125_c
class SegmentTree
  def initialize(n, unity, &func)
    @size_r = 1
    while @size_r < n
      @size_r <<= 2
    end
    @func = func
    @unity = unity
    @dat = Array.new(@size_r * 2, @unity)
  end

  # set, a is 0-indexed
  def set(a, v)
    @dat[a + @size_r] = v
  end

  def build
    (@size_r - 1).downto(1) do |k|
      @dat[k] = @func.call(@dat[k * 2], @dat[k * 2 + 1])
    end
  end

  # get [a, b), a and b are 0-indexed
  def get(a, b)
    vleft = vright = @unity
    left = a + @size_r
    right = b + @size_r
    while (left < right)
      if (left & 1) == 1
        vleft = @func.call(vleft, @dat[left])
        left += 1
      end
      if (right & 1) == 1
        right -= 1
        vright = @func.call(@dat[right], vright)
      end
      left >>= 1
      right >>= 1
    end
    return @func.call(vleft, vright)
  end
end

N = gets.to_i
a = gets.split.map(&:to_i)

seg = SegmentTree.new(N, 0) { |x, y| x.gcd(y) }

N.times do |i|
  seg.set(i, a[i])
end
seg.build
ans = 0
N.times do |i|
  left = seg.get(0, i)
  right = seg.get(i + 1, N)
  ans = [ans, left.gcd(right)].max
end

puts ans
