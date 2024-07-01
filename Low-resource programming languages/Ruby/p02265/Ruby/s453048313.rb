class List
  def initialize n
    @first = ListItem.new n
  end

  def [] index
    current_item = @first

    # ?????????????????????
    index.times {|item|
      if current_item.next.nil?
        raise '?????£'
      end
      current_item = current_item.next
    }

    current_item
  end

  def insert val
    new_item = ListItem.new val

    # ????????????????????????
    new_item.next = @first
    @first.prev = new_item

    @first = new_item
  end

  def delete target
    current_item = @first

    loop do

      if  current_item.nil?
        raise '????±??????????????????????'
      end

      if current_item.n == target
        # ????????????
        prev_item = current_item.prev
        next_item = current_item.next
        prev_item.next = next_item unless prev_item.nil?
        next_item.prev = prev_item unless next_item.nil?
        # ???????????????????????????
        if prev_item.nil?
          @first = next_item
        end
        return
      end

      current_item = current_item.next
    end

  end

  def delete_first
    @first = @first.next
    @first.prev = nil
  end

  def delete_last
    current_item = @first
    # ???????????§?????????
    current_item = current_item.next until current_item.next.nil?
    # ??????????????????????????¢??????????????????????????????
    current_item.prev.next = nil
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