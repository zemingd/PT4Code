n = gets.to_i
commands = Array.new(n) {gets.chomp.split}

class Doubly_linked_node
  attr_accessor :next, :prev, :key
  def initialize
    @next = nil
    @prev = nil
    @key = nil
  end
end

class Doubly_linked_list
  def initialize
    @first_node = Doubly_linked_node.new
    @last_node = Doubly_linked_node.new
    @first_node.next = @last_node
    @last_node.prev = @first_node
  end


  def insert(key)
    tmp = Doubly_linked_node.new
    tmp.key = key
    tmp.next = @first_node.next
    tmp.prev = @first_node
    @first_node.next.prev = tmp
    @first_node.next = tmp
  end

  def delete(key)
    cur = @first_node.next
    while cur.key != nil
      if cur.key == key
        cur.next.prev = cur.prev
        cur.prev.next = cur.next
        break
      end
      cur = cur.next
    end
  end

  def delete_first
    @first_node.next.next.prev = @first_node
    @first_node.next = @first_node.next.next
  end

  def delete_last
    @last_node.prev.prev.next = @last_node
    @last_node.prev = @last_node.prev.prev
  end

  def puts_answer
    ans = []
    cur = @first_node.next
    while cur.key != nil
      ans.push(cur.key)
      cur = cur.next
    end
    puts ans.join(" ")
  end
end

dll = Doubly_linked_list.new

commands.each do |s|
  case s[0]
  when "insert"
    dll.insert s[1]
  when "delete"
    dll.delete s[1]
  when "deleteFirst"
    dll.delete_first
  when "deleteLast"
    dll.delete_last
  end
end

dll.puts_answer
