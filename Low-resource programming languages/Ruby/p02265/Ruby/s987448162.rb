class String
  def to_snakecase
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end

class List
  def initialize
    @head = Node.new
    @tail = Node.new(@head)
    @head.nxt = @tail
  end

  def insert(val)
    nxt_old = @head.nxt
    node = Node.new(@head, nxt_old, val)
    @head.nxt = node
    nxt_old.prv = node
  end

  def delete(val)
    node = @head.nxt
    while node.val
      if node.val == val
        node.prv.nxt = node.nxt
        node.nxt.prv = node.prv
        return
      end
      node = node.nxt
    end
  end

  def delete_first
    raise 'List is mpety.' if @head.nxt == @tail
    @head.nxt = @head.nxt.nxt
    @head.nxt.prv = @head
  end

  def delete_last
    raise 'List is mpety.' if @head.nxt == @tail
    @tail.prv = @tail.prv.prv
    @tail.prv.nxt = @tail
  end

  def to_s
    vals = []
    node = @head.nxt
    while node.val
      vals << node.val
      node = node.nxt
    end
    vals.join(' ')
  end

  class Node
    attr_accessor :prv, :nxt, :val
    def initialize(prv = nil, nxt = nil, val = nil)
      @prv = prv
      @nxt = nxt
      @val = val
    end
  end
end

list = List.new

STDIN.read.split(/\n/)[1..-1].each do |line|
  ary = line.split(/\s/)
  command = ary[0]
  if %w{deleteFirst deleteLast}.include? command
    list.send(command.to_snakecase)
  else
    val = ary[1].to_i
    list.send(command, val)
  end
end
puts list.to_s