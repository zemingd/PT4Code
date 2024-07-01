class List
  class Node
    attr_reader :key
    attr_accessor :prev, :next

    def initialize(key)
      @key = key
      @prev = @next = self
    end
  end

  include Enumerable

  attr_reader :head

  def initialize
    @head = Node.new(nil)
  end

  def each
    node = @head.next

    while node != @head
      yield node
      node = node.next
    end
  end

  def insert(key)
    node = Node.new(key)
    node.next = @head.next
    @head.next.prev = node
    @head.next = node
    node.prev = @head
  end

  def delete(key)
    node = get(key)

    return unless node

    delete_node(node)
  end

  def delete_first
    node = @head.next
    delete_node(node) unless node == @head
  end

  def delete_last
    node = @head.prev
    delete_node(node) unless node == @head
  end

  private

  def get(key)
    each do |node|
      return node if node.key == key
    end

    nil
  end

  def delete_node(node)
    node.prev.next = node.next
    node.next.prev = node.prev

    node.prev = node.next = nil

    node
  end
end

n = gets.to_i

list = List.new

while line = gets
  command, key = line.split
  key = key.to_i

  case command
  when 'insert'
    list.insert(key)
  when 'delete'
    list.delete(key)
  when 'deleteFirst'
    list.delete_first
  when 'deleteLast'
    list.delete_last
  else
    raise "unknown command: #{command}"
  end
end

puts list.map(&:key).join(' ')