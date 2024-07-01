class Updatable_Binary_Heap
  def initialize(list: [])
    @a = [nil] + list.sort{ |a,b| (a <= b) ? -1 : 1 }.map.with_index{ |v,i| { i: i+1, v: v }  }
    @m = @a.size
  end

  def insert(x)
    node = { i: @m, v: x }
    case 
    when @m < @a.size
      @a[@m] = node
    else
      @a << node
    end
    up_heap(@m)
    @m += 1
    node
  end

  def up_heap(i)
    while (j = i >> 1) > 0
      break if @a[j][:v] <= @a[i][:v]
      swap_node(i,j)
      i = j
    end
    i
  end

  def head
    @a[@m > 1 ? 1 : 0]
  end

  def shift
    return nil if @m <= 1
    @m -= 1
    swap_node(1, @m)
    down_heap(1)
    @a[@m]
  end

  def down_heap(i)
    while (j = i << 1) < @m
      j |= ((j|1) < @m && @a[j][:v] > @a[j|1][:v]) ? 1 : 0
      break if (@a[i][:v] <= @a[j][:v])
      swap_node(i,j)
      i = j
    end
    i
  end

  def swap_node(i,j)
    ai = @a[i]; aj = @a[j]
    ai[:i], aj[:i] = aj[:i], ai[:i]
    @a[i], @a[j] = aj, ai
  end

  def update_node(node, x)
    i = node[:i]
    node[:v] = x
    down_heap(i) == i && up_heap(i)
  end

  def a
    @a[1...@m]
  end
end

N,M = gets.split.map &:to_i
ab = (0...N).map{ gets.split.map &:to_i }.sort_by{ |a,b| a }
st = Updatable_Binary_Heap.new()
D = 10000
ans = 0
(1..M).each{ |d|
  while ab.size > 0 && ab[0][0] <= d do
    a,b = ab.shift
    st.insert(-b)
  end
  b = st.shift
  next if !b
  ans -= b[:v]
}
p ans
