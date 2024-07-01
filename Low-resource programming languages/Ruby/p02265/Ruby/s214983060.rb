class DoubleLinkedList
  Elem = Struct.new(:value, :prev, :next)

  def initialize
    @root = nil
    @last = nil
  end

  def insert(x)
    if @root
      new_elem = Elem.new(x, nil, @root)
      @root.prev = new_elem
      @root = new_elem
    else
      @root = Elem.new(x, nil, nil)
      @last = @root
    end
  end

  def delete(x)
    elem = @root
    while elem
      if elem.value == x
        elem.next.prev = elem.prev if elem.next
        elem.prev.next = elem.next if elem.prev
        @root = elem.next if @root == elem
        @last = elem.prev if @last == elem
        return
      end
      elem = elem.next
    end
  end

  def delete_first
    if @root
      new_root = @root.next
      @last = nil if @root == @last
      new_root.prev = nil if new_root
      @root.prev = nil
      @root.next = nil
      @root = new_root
    end
  end

  def delete_last
    if new_last = @last.prev
      new_last.next = nil
      @last.prev = nil
      @last = new_last
    elsif @last == @root
      @root = nil
      @last = nil
    end
  end

  def to_s
    result = String.new
    elem = @root
    while elem
      result << elem.value.to_s
      elem = elem.next
      result << " " if elem
    end

    result
  end
end

l = DoubleLinkedList.new

#l.insert(1)
#l.insert(2)
#l.insert(3)
#l.delete(3)
#l.insert(3)
#l.insert(4)
#l.delete(4)
#l.delete_first

gets.to_i.times do
  case input = gets.chomp
  when /^insert /
    l.insert input[7..-1].to_i
  when /^delete /
    l.delete input[7..-1].to_i
  when "deleteFirst"
    l.delete_first
  when "deleteLast"
    l.delete_last
  end
end

puts l.to_s

