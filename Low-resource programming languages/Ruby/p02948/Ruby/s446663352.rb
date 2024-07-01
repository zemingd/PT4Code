# Refer to:
# https://qiita.com/mochizukikotaro/items/c335e6dcc5020ead0b92
class PriorityQueue
  def initialize(array = [])
    @data = []
    array.each{|a| push(a)}
  end

  def push(element)
    @data.push(element)
    bottom_up
  end
  
  # added by univ
  def top
    if size == 0
      return nil
    else
      @data[0]
    end
  end

  def pop
    if size == 0
      return nil
    elsif size == 1
      return @data.pop
    else
      min = @data[0]
      @data[0] = @data.pop
      top_down
      return min
    end
  end
  
  # added by univ
  def sum
    @data.inject(:+)
  end
  
  def size
    @data.size
  end
  
  # added by univ
  def empty?
    @data.size == 0
  end
  
  private

  def swap(i, j)
    @data[i], @data[j] = @data[j], @data[i]
  end

  def parent_idx(target_idx)
    (target_idx - (target_idx.even? ? 2 : 1)) / 2
  end

  def bottom_up
    target_idx = size - 1
    return if target_idx == 0
    parent_idx = parent_idx(target_idx)
    while (@data[parent_idx] > @data[target_idx])
      swap(parent_idx, target_idx)
      target_idx = parent_idx
      break if target_idx == 0
      parent_idx = parent_idx(target_idx)
    end
  end

  def top_down
    target_idx = 0

    # child がある場合
    while (has_child?(target_idx))

      a = left_child_idx(target_idx)
      b = right_child_idx(target_idx)

      if @data[b].nil?
        c = a
      else
        c = @data[a] <= @data[b] ? a : b
      end

      if @data[target_idx] > @data[c]
        swap(target_idx, c)
        target_idx = c
      else
        return
      end
    end
  end

  # @param Integer
  # @return Integer
  def left_child_idx(idx)
    (idx * 2) + 1
  end

  # @param Integer
  # @return Integer
  def right_child_idx(idx)
    (idx * 2) + 2
  end

  # @param Integer
  # @return Boolent
  def has_child?(idx)
    ((idx * 2) + 1) < @data.size
  end
end

mod = 10 ** 9 + 7
def an(n,d=0) Array.new(n,d)end
def an2(n,m,d=0) Array.new(n){an(m,d)}end
def an3(n,m,l,d=0) Array.new(n){an2(m,l,d)}end

n, m = gets.split.map(&:to_i)

t = Array.new(10**5+1){[]}
n.times do |i|
  a, b = gets.split.map(&:to_i)
  t[a].push(b)
end

ans = 0
pq = PriorityQueue.new()
(1..m).each do |d|
  t[d].each{|b| b*=-1; pq.push(b) }
  if pq.size > 0
    b = pq.pop * -1
    ans += b
  end
end

puts ans