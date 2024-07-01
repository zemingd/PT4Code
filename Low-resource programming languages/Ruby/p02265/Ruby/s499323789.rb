class DoublyLinkedList
  def initialize
    @data = []
  end

  def insert(x)
    @data.unshift x
  end

  def delete(x)
    i = @data.index(x)
    @data.delete_at(i) unless i == nil
  end

  def delete_first
    @data.shift
  end

  def delete_last
    @data.pop
  end

  def description
    @data.join(" ")
  end
end

list = DoublyLinkedList.new
n = gets.to_i
(1..n).each {
  op, x = gets.split(" ")
  case op
    when "insert" then list.insert(x.to_i)
    when "delete" then list.delete(x.to_i)
    when "deleteFirst" then list.delete_first
    when "deleteLast" then list.delete_last
  end
}

puts list.description