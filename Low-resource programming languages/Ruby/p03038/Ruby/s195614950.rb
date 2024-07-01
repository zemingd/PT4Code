class PriorityQueue
  class ComparableArray < Array
    include Comparable
  end
  def initialize
    @heap = ComparableArray.new
    @node_num = 0
  end

  def arr_to_carr(arr)
    ret = ComparableArray.new
    arr.each do |x|
      ret << x
    end
    ret
  end

  def push(x)
    x = arr_to_carr(x) if x.is_a?(Array)
    i = @node_num # 自分のノード番号
    @node_num += 1
    while i > 0
      par = (i - 1) / 2 # 親のノード番号
      break if @heap[par] <= x # 逆転してないなら抜ける
      # 親ノードを下ろして自分を上に
      @heap[i] = @heap[par]
      i = par
    end
    @heap[i] = x
  end

  def pop()
    # 最小値
    ret = @heap[0]
    # 根にもってくる値
    @node_num -= 1
    x = @heap[@node_num]
    # 根から下ろしていく
    i = 0
    while i * 2 + 1 < @node_num
      # 子どうしを比較
      a, b = i * 2 + 1, i * 2 + 2
      a = b if b < @node_num && @heap[b] < @heap[a]
      break if @heap[a] >= x
      @heap[i] = @heap[a]
      i = a
    end
    @heap[i] = x
    return ret
  end

  def get()
    @heap[0]
  end
end

N,M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

q = PriorityQueue.new
a.each do |ai|
  q.push([-ai, 1])
end
M.times do
  b, c = gets.split.map(&:to_i)
  q.push([-c, b])
end

cnt = N
ans = 0
while cnt > 0
  c, b = q.pop
  c = -c
  if b < cnt
    ans += b*c
    cnt -= b    
  else
    ans += c * cnt
    cnt = 0
  end
end

puts ans


