# 0-indexedで、getは半開区間であることに注意
class SegmentTree

  @@inf = (1 << 60) - 1

  # O(n)
  def initialize(n, form)
    case form
    when "and"
      @identity_element = (1 << 60) - 1
      @func = Proc.new{|x, y| x & y }
    when "gcd"
      @identity_element = 0
      @func = Proc.new{|x, y| x.gcd y }
    when "lcm"
      @identity_element = 1
      @func = Proc.new{|x, y| x.lcm y }
    when "max"
      @identity_element = -@@inf
      @func = Proc.new{|x, y| x > y ? x : y }
    when "min"
      @identity_element =  @@inf
      @func = Proc.new{|x, y| x < y ? x : y }
    when "min_with_index"
      @identity_element =  [@@inf, n+1]
      @func = Proc.new{|x, y| x < y ? x : y }
    when "or"
      @identity_element = 0
      @func = Proc.new{|x, y| x | y}
    when "prod"
      @identity_element = 1
      @func = Proc.new{|x, y| x * y}
    when "sum"
      @identity_element = 1
      @func = Proc.new{|x, y| x + y}
    end

    # @identity_element = identity_element
    @n = 1
    @n *= 2 while @n < n
    # @n: leaf node size(2^k)
    # @n*2-1: tree node size
    @n_1 = @n - 1
    @nodes = Array.new(@n*2-1){ @identity_element }
  end

  def update(i, val)
    # @n-1: inner node size
    i += @n_1
    @nodes[i] = val
    while i > 0
      i = ( i - 1 ) / 2
      @nodes[i] = @func.call(@nodes[2*i+1], @nodes[2*i+2])
    end
    true
  end

  def swap(i, j)
    # @n-1: inner node size
    n_i = @nodes[i + @n_1].dup
    n_j = @nodes[j + @n_1].dup
    update(i, n_j)
    update(j, n_i)
  end

  def swap_with_index(i, j)
    # @n-1: inner node size
    n_i = @nodes[i + @n_1].dup
    n_j = @nodes[j + @n_1].dup
    n_i[-1] = j
    n_j[-1] = i
    update(i, n_j)
    update(j, n_i)
  end

  def get(l, r)
    l += @n_1
    r += @n_1
    lres, rres = @identity_element, @identity_element
    while l < r
      if l[0] == 0
        lres = @func.call(lres, @nodes[l])
        l += 1
      end
      if r[0] == 0
        r -= 1
        rres = @func.call(rres, @nodes[r])
      end
      l /= 2
      r /= 2
    end
    return @func.call(lres, rres)
  end

  def all_update
    @n_1.downto(1){ |i| @nodes[i-1] = @func.call(@nodes[2*i-1], @nodes[2*i]) }
  end

  def [](k)
    @nodes[@n_1 + k]
  end

  def []=(i, val)
    @nodes[@n_1 + i] = val
  end

  def inf=(x)
    @@inf = x
  end

  def inf()
    @@inf
  end

  def inspect

    t = 0
    res = "SegmentTree\n  "
    @nodes.each_with_index do |e,i|

      res << e.to_s << " "
      if t == i && i < @n_1
        res << "\n  "
        t = t * 2 + 2
      end
    end
    res
  end
end

class Array
  include Comparable
  def to_st(form)
    st = SegmentTree.new(size, form)
    each_with_index{ |t, i| st[i] = t }
    st.all_update
    st
  end
end


# ABC125

n = gets.to_s.to_i
a = gets.to_s.split.map{|t| t.to_i }
 
st = a.to_st("gcd")
ans = [st.get(1, n), st.get(0, n-1)].max

1.upto(n-2) do |i|
  v = st.get(0, i).gcd st.get(i+1, n) 
  ans = v if ans < v
end
 
puts ans

### ???
# n, q = gets.to_s.split.map{|t| t.to_i }
# a    = gets.to_s.split.map{|t| t.to_i }

# st = a.map.with_index{|t, i| [t, i] }.to_st("min_with_index")

# q.times do
#   x, l, r = gets.to_s.split.map{|t| t.to_i - 1 }
#   # p "aaa"
#   if x == 0
#     st.swap_with_index(l, r)
#   else
#     # puts "ans:"
#     p st.get(l, r+1)[-1] + 1
#   end
# end



# ABC
# n = gets.to_s.to_i
# s = gets.to_s.chomp
# q = gets.to_s.to_i

# # p "a".ord #=> 97
# st = s.bytes.map{|c| 1 << (c-97) }.to_st("or")

# ans = []
# q.times do

#   t, x, y = gets.to_s.split

#   if t == "1"
#     i, c = x.to_i-1, y[0].ord
#     st.update(i, 1 << (c-97))
#   else
#     l, r = x.to_i-1, y.to_i-1
#     ans << st.get(l, r+1).to_s(2).count('1')
#   end
# end
#
# puts ans



# yukicoder
# n, q = gets.to_s.split.map{|t| t.to_i }
# a    = gets.to_s.split.map{|t| t.to_i }

# idx = Array.new(n+1)
# a.each_with_index{ |t, i| idx[t] = i }

# st = a.to_st("min")

# ans = []
# q.times do
#   x, l, r = gets.to_s.split.map{|t| t.to_i }
#   l -= 1
#   r -= 1

#   if x == 1
#     nl = st[l]
#     nr = st[r]
#     idx[nl] = r
#     idx[nr] = l
#     st.update(l, nr)
#     st.update(r, nl)
#   else
#     ans << (idx[st.get(l, r+1)] + 1)
#   end
# end

# puts ans
