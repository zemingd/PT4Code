class List
  class Cell
    attr_accessor :val, :prev, :next
    def initialize(v,p=nil,n=nil)
      @val = v
      @prev = p
      @next = n
    end
  end

  def insert(x)
    o = Cell.new(x)
    @top.prev = o unless @top == nil
    o.next = @top
    @top = o
    @bottom = o if @bottom == nil
  end

  def delete(x)
    p = @top
    until p == nil || p.val == x
      p = p.next
    end
    unless p == nil
      if p == @top
        @top = p.next
      else
        p.prev.next = p.next
      end
      if p == @bottom
        @bottom = p.prev
      else
        p.next.prev = p.prev
      end
    end
  end

  def deleteFirst
    unless @top == nil
      @top = @top.next
      @top.prev = nil
    end
  end

  def deleteLast
    unless @bottom == nil
      @bottom = @bottom.prev
      @bottom.next = nil
    end
  end

  def show
    p = @top
    until p == nil
      print " " unless p == @top
      print p.val
      p = p.next
    end
    print "\n"
  end
end

n = gets.to_i
list = List.new
for i in 1..n
  com,v = gets.split
  case com
  when "insert"
    list.insert(v.to_i)
  when "delete"
    list.delete(v.to_i)
  when "deleteFirst"
    list.deleteFirst
  when "deleteLast"
    list.deleteLast
  end
end
list.show