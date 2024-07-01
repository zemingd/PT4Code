class List
  def initialize n
    @first = ListItem.new n
    @last = @first
  end

  def [] index
    current_item = @first

    # ?????????????????????
    index.times {|item|
      if current_item.next.nil?
        raise '?????£' + current_item.n
      end
      current_item = current_item.next
    }

    current_item
  end

  def insert val
    new_item = ListItem.new val

    if @first.nil?
      @first = new_item
      @last = new_item
    else
      new_item.next = @first
      @first.prev = new_item
      @first = new_item
    end
  end

  def search target
    current_item = @first

    loop do
      if  current_item.nil?
        return nil
      end
      if current_item.n == target
        return current_item
      end
      current_item = current_item.next
    end
  end

  def delete target
    target_item = search target
    return false if target_item.nil?

    # ????????????
    prev_item = target_item.prev
    next_item = target_item.next

    prev_item.next = next_item unless prev_item.nil?
    next_item.prev = prev_item unless next_item.nil?

    # ??????????±????????????????
    if prev_item.nil?
      @first = next_item
    end

    # ??????????±????????????????
    if next_item.nil?
      @last = prev_item
    end

    return true
  end

  def delete_first
    if @first.next.nil?
      @first = nil
      @last = nil
    else
      @first = @first.next
      @first.prev = nil
    end
  end

  def delete_last
    if @last.prev.nil?
      @last = nil
      @first = nil
    else
      @last = @last.prev
      @last.next = nil
    end
  end

  def print delimiter = ' '
    print_items = []
    current_item = @first
    until current_item.nil?
      print_items << current_item.n
      current_item = current_item.next
    end
    puts print_items.join delimiter
  end

  class ListItem
    def initialize n
      @n = n
      @next = nil
      @prev = nil
    end
    attr_accessor :next, :prev, :n
  end
end

def main commands
  # ??¨???????????????????????????insert??¨?????????
  list = List.new commands.shift.split(' ')[1]

  commands.each do |raw_command|
    #list.print
    command, arg = raw_command.split ' '
    case command
    when 'insert'
      list.insert arg
    when 'delete'
      list.delete arg
    when 'deleteFirst'
      list.delete_first
    when 'deleteLast'
      list.delete_last
    else
      raise '??????'
    end
  end
  list.print
end


inputs = STDIN.read.split(/\n/)
inputs.shift

main(inputs)