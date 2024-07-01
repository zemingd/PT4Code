class MyDoublyLinkedList
  def initialize
    @orig = MyNode.new(nil, is_orig=true)
    @orig.next = @orig
    @orig.prev = @orig
  end

  def insert(key)
    node = MyNode.new(key)
    node.next = @orig.next
    @orig.next.prev = node
    @orig.next = node
    node.prev = @orig
  end

  def list_search(key)
    cur = @orig.next
    while ( !cur.is_orig && cur.key != key)
      cur = cur.next
    end
    cur
  end

  def delete_node(t)
    return if t.is_orig

    t.prev.next = t.next
    t.next.prev = t.prev
  end

  def delete_first
    delete_node(@orig.next)
  end

  def delete_last
    delete_node(@orig.prev)
  end

  def delete_key(key)
    delete_node(list_search(key))
  end

  def exec(command, key=nil)
    case command
    when "insert"
      insert(key)
    when "delete"
      delete_key(key)
    when "deleteFirst"
      delete_first()
    when "deleteLast"
      delete_last()
    end
  end

  def print
    keys = []
    cur = @orig.next
    while ( !cur.is_orig)
      keys << cur.key
      cur = cur.next
    end
    puts keys.join(' ')
  end
end

class MyNode
  attr_accessor :key, :prev, :next
  attr_reader :is_orig
  def initialize(key, is_orig=false)
    @key = key
    @is_orig = is_orig
  end
end

n = gets.to_i
dll = MyDoublyLinkedList.new
n.times do
  command, key = gets.split
  key = key.to_i
  dll.exec(command, key)
end

dll.print
