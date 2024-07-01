# ALDS1_3_C: Doubly Linked List

class DoublyLinkedList
  include Enumerable

  def initialize
    @head = Node.new
    @head.next = @head.prev = @head
  end

  def insert(key)
    node = Node.new key
    @head.append node
    node
  end

  def delete(key)
    node = search_node key
    delete_node node
  end

  def deleteFirst
    delete_node @head.next
  end

  def deleteLast
    delete_node @head.prev
  end

  def each
    node = @head.next
    while node != @head
      yield node
      node = node.next
    end
  end

  def to_s
    inject('') do |s, node|
      s << ' ' << node.key.to_s
    end.strip
  end

  private
    def delete_node(node)
      node.disappear unless node.nil?
    end

    def search_node(key)
      find do |node|
        node.key == key && node != @head
      end
    end

    class Node
      attr_accessor :key, :next, :prev

      def initialize(key = nil)
        @key  = key
        @next = @prev = nil
      end

      def append(another)
        another.next   = self.next
        self.next.prev = another
        self.next      = another
        another.prev   = self
      end

      def disappear
        self.prev.next = self.next
        self.next.prev = self.prev
        self
      end
    end
end

list = DoublyLinkedList.new
n_commands = gets.to_i

n_commands.times do
  input   = gets.chomp.split
  command = input.first
  args    = input.drop(1)
  list.send command, *args
end

puts list