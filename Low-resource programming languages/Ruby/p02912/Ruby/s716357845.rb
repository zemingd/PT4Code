class PriorityQueue
  def initialize(func) #(&comp)
    @heap = []
    @node_num = 0
    # if !block_given?
    #   @comp = lambda { |x, y| x <= y }
    # else
    #   @comp = comp
    # end
    @func = func
  end

  def push(x)
    i = @node_num # 自分のノード番号
    @node_num += 1
    while i > 0
      par = (i - 1) / 2 # 親のノード番号
      break if @func.call(@heap[par], x) # 逆転してないなら抜ける
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
      a = b if b < @node_num && !@func.call(@heap[a], @heap[b])
      break if @func.call(x, @heap[a])
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

class Foo
  def func(x, y)
    return x > y
  end
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

f = Foo.new.method(:func)
q = PriorityQueue.new(f) #{ |x, y| x > y }

a.each do |ai|
  q << ai
end
m.times do
  max_n = q.pop()
  q << (max_n / 2)
end
ans = 0
n.times do
  ans += (q.pop)
end
p ans
