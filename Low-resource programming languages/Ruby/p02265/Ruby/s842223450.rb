class Node
  def initialize(prev_node, next_node, value)
    @value = value
    @prev = prev_node
    @next = next_node
  end
  attr_accessor :next_node, :prev_node, :value
end

class LinkedList
  def initialize
    @first_node = Node.new(nil, nil, nil)
    @current_node = first_node
    @last_node = Node.new(nil, nil, nil)
    first_node.next_node = last_node
    last_node.prev_node = first_node
  end
  attr_accessor :first_node, :current_node, :last_node

  def insert(x)
    new_node = Node.new(first_node, nil, x)
    tmp = first_node.next_node
    first_node.next_node = new_node
    new_node.next_node = tmp
    tmp.prev_node = new_node
  end

  def delete(x)
    current = first_node
    until current.next_node.nil?
      if current.value == x
        current.prev_node.next_node = current.next_node
        current.next_node.prev_node = current.prev_node
      end
      current = current.next_node
    end
  end

  def deleteFirst
    first_node.next_node.next_node.prev_node = first_node
    first_node.next_node = first_node.next_node.next_node
  end

  def deleteLast
    last_node.prev_node.prev_node.next_node = last_node
    last_node.prev_node = last_node.prev_node.prev_node
  end

  def print_all
    current = first_node
    array = []
    until current.next_node.next_node.nil?
      array << current.next_node.value
      current = current.next_node
    end
    puts array.join ' '
  end
end

list = LinkedList.new
gets.to_i.times do
  input = gets.split(' ')
  case input[0]
  when 'insert'
    list.insert input[1].to_i
  when 'delete'
    list.delete input[1].to_i
  when 'deleteFirst'
    list.deleteFirst
  when 'deleteLast'
    list.deleteLast
  end
end
list.print_all

