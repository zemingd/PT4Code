class PriorityQueue
  def initialize(&comp)
    @heap = []
    @node_num = 0
    if !block_given?
      @comp = lambda { |x, y| x <= y }
    else
      @comp = comp
    end
  end

  def push(x)
    i = @node_num # 自分のノード番号
    @node_num += 1
    while i > 0
      par = (i - 1) / 2 # 親のノード番号
      break if @comp.call(@heap[par], x) # 逆転してないなら抜ける
      # 親ノードを下ろして自分を上に
      @heap[i] = @heap[par]
      i = par
    end
    @heap[i] = x
  end

  alias_method(:<<, :push)

  def pop
    # 最(小|大)値
    ret = @heap[0]
    # 根にもってくる値
    @node_num -= 1
    x = @heap[@node_num]
    # 根から下ろしていく
    i = 0
    while i * 2 + 1 < @node_num
      # 子どうしを比較
      a, b = i * 2 + 1, i * 2 + 2
      a = b if b < @node_num && !@comp.call(@heap[a], @heap[b])
      break if @comp.call(x, @heap[a])
      @heap[i] = @heap[a]
      i = a
    end
    @heap[i] = x
    return ret
  end

  def get
    @node_num == 0 ? nil : @heap[0]
  end

  def empty?
    return get.nil?
  end
end

q = PriorityQueue.new { |a, b| a[0] > b[0] }
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.each do |ai|
  q << [ai, 1]
end
m.times do
  b, c = gets.split.map(&:to_i)
  q << [c, b]
end
ans = 0
cnt = 0
while cnt < n
  x, y = q.pop
  if cnt + y > n
    ans += (n-cnt)*x
    break
  else
    ans += y*x
    cnt += y
  end
end
p ans
