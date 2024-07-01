class DoublyList

  class Elem
    attr_accessor :key, :prev, :post

    def initialize key, prev, post
      @key = key
      @prev = prev
      @post = post
    end

  end

  def initialize
    @head = Elem.new(nil, nil, nil)
  end

  def insert x
    x_elem = Elem.new(x, @head, @head.post)
    @head.post.prev = x_elem if @head.post
    @head.post = x_elem
  end

  def query x
    target = @head.post
    begin
      return target if target.key == x
    end while (target = target.post)
  end

  def delete x
    target = query x
    return unless target
    target.prev.post = target.post
    target.post.prev = target.prev if target.post
    target = nil
  end

  def delete_first
    target = @head.post
    target.post.prev = @head
    @head.post = target.post
    target = nil
  end

  def delete_last
    target = @head.post
    loop do
      if target.post == nil
        target.prev.post = nil
        target = nil
        break
      else
        target = target.post
      end
    end
  end

  def disp
    target = @head.post
    result = []
    begin
      result << target.key
    end while (target = target.post)
    puts result*' '
  end
end

dl = DoublyList.new
n = gets.to_i
n.times do
  command = gets.split
  case command[0]
  when "insert" then
    dl.insert command[1].to_i
  when "delete" then
    dl.delete command[1].to_i
  when "deleteFirst" then
    dl.delete_first
  when "deleteLast" then
    dl.delete_last
  end
end

dl.disp