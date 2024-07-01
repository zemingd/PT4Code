class LinkedList

  attr_reader :first, :last
  
  Node = Struct.new("Node", :prev, :next, :key)
  
  def initialize(key)
    @first = @last = Node.new(nil, nil, key)
  end

  def insert(key)
    if @first.nil? and @last.nil?
      initialize(key)
    else
      @last.next = @last = Node.new(@last, nil, key)
    end
  end

  def delete(key)
    x = list_search(key)
    return if x.nil?
    unless x.prev.nil?
      x.prev.next = x.next
    else
      deleteLast
    end
    unless x.next.nil?
      x.next.prev = x.prev
    else
      deleteFirst
    end
  end

  def deleteLast
    if @first.next.nil?
      @first = @last = nil
    else
      @first.next.prev = nil
      @first = @first.next
    end
  end

  def deleteFirst
    if @last.prev.nil?
      @first = @last = nil
    else
      @last.prev.next = nil
      @last = @last.prev
    end
  end

  def list_search(key)
    value = @last
    until value.nil?
      if value.key == key
        return value
      end
      value = value.prev
    end
  end

  def reverse_print
    value = @last
    printable = ""
    until value.nil?
      printable <<= "#{value.key} "
      value = value.prev
    end
    puts printable.chop
  end
end

n = gets.chomp.to_i

a = LinkedList.new(gets.chomp.split(" ")[1].to_i)

(n-1).times do |i|
  x, y = gets.chomp.split(" ")
  if x == "insert"
    a.insert(y.to_i)
  elsif x == "delete"
    a.delete(y.to_i)
  elsif x == "deleteFirst"
    a.deleteFirst
  elsif x == "deleteLast"
    a.deleteLast
  end
end

a.reverse_print

