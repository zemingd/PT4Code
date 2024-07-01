class PriorityQueue
  def initialize(&comp)
    @heap = []
    @node_num = 0
    # if !block_given?
    #   @comp = Proc.new { |x, y| x <= y }
    # else
    #   @comp = comp
    # end
    @comp = comp
  end
  attr_reader :heap

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
      a = i * 2 + 1
      b = i * 2 + 2
      a = b if b < @node_num && !@comp.call(@heap[a], @heap[b])
      break if @comp.call(x, @heap[a])
      @heap[i] = @heap[a]
      i = a
    end
    @heap[i] = x
    ret
  end

  def get
    @node_num == 0 ? nil : @heap[0]
  end

  def empty?
    get.nil?
  end
end

n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
q = PriorityQueue.new { |x, y| x > y }
a.each do |e|
  q.push e
end

m.times do
  q.push(q.pop / 2)
end
puts q.heap.inject(:+)
