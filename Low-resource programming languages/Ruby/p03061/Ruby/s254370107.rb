class SegmentTree
  def initialize(arg, e)
    if arg.is_a?(Integer)
      v = Array.new(arg){ e }
    elsif arg.is_a?(Array)
      v = arg
    else
      raise ArgumentError
    end
    
    @e  = e
    @op = Proc.new { yield(_1, _2) }
    
    @n = v.size
    @log = ceil_pow2(@n)
    @leaf_size = 1 << @log
    @d = Array.new(@leaf_size * 2) { e }
    v.each_with_index { |v_i, i| @d[@leaf_size + i] = v_i }
    (@leaf_size - 1).downto(1) { |i| update(i) }
    self
  end
  
  def set(q, x)
    raise ArgumentError if (q < 0 || @n <= q)
    q += @leaf_size
    @d[q] = x
    1.upto(@log) { |i| update(q >> i) }
  end
  
  def get(q)
    raise ArgumentError if (q < 0 || @n <= q)
    d[leaf_size + q]
  end
  
  def prod(l, r)
    sml = @e
    smr = @e
    l += @leaf_size
    r += @leaf_size
    
    while l < r
      if l[0] == 1
        sml = @op.call(sml, @d[l])
        l += 1
      end
      if r[0] == 1
        r -= 1
        smr = @op.call(@d[r], smr)
      end
      l /= 2
      r /= 2
    end
    
    @op.call(sml, smr)
  end
  
  def all_prod
    d[1]
  end
  
  def max_right(l)
    return @n if l == @n
    
    f = Proc.new { yield(_1) }
    
    l += @leaf_size
    sm = @e
    loop do
      l /= 2 while l % 2 == 0
      unless f.call(@op.call(sm, @d[l]))
        while l < @leaf_size
          l = 2 * l
          if f.call(@op.call(sm, @d[l]))
            sm = op(sm, @d[l])
            l += 1
          end
        end
        return l - @leaf_size
      end
      sm = @op.call(sm, @d[l])
      l += 1
      break if (l & -l) == l
    end
    
    @n
  end
  
  private
  
  def update(k)
    @d[k] = @op.call(@d[2 * k], @d[2 * k + 1])
  end
  
  def inspect
    t = 0
    res = "SegmentTree\n  "
    a = @d[1, @d.size - 1]
    a.each_with_index do |e, i|

      res << e.to_s << " "
      if t == i && i < @leaf_size
        res << "\n  "
        t = t * 2 + 2
      end
    end
    res
  end
end

def ceil_pow2(n)
  x = 0
  x += 1 while (1 << x) < n
  x
end

SegTree = SegmentTree
Segtree = SegmentTree

# ABC125
n = gets.to_s.to_i
a = gets.to_s.split.map{ |e| e.to_i }

st = Segtree.new(a, 0) { _1.gcd(_2) }

ans = [st.prod(1, n), st.prod(0, n-1)].max
 
1.upto(n-2) do |i|
  v = st.prod(0, i).gcd st.prod(i+1, n) 
  ans = v if ans < v
end
 
puts ans


# INF = (1 << 60) - 1

# practice
#
# n, q = gets.to_s.split.map{ |t| t.to_i }
# a    = gets.to_s.split.map{ |t| t.to_i }

# st = Segtree.new(a, -INF) { [_1, _2].max }

# q.times do
#   query = gets.to_s.split.map{ |t| t.to_i }
#   if query[0] == 1
#     _, x, v = query
#     st.set(x - 1, v)
#   elsif query[0] == 2
#     _, l, r = query
#     puts st.prod(l - 1, r)
#   elsif query[0] == 3
#     _, x, v = query
#     puts st.max_right(x - 1) { _1 < v } + 1
#   else
#     raise
#   end
# end
