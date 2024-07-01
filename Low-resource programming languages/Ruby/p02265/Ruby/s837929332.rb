command_num = STDIN.gets.to_i
commands = STDIN.read.split("\n")

list_head = nil
list_tail = nil

commands.each do |command|
  func, arg =command.split(' ')
  case func
  when 'insert'
    if list_head.nil?
      # list is empty
      list_head = {value: arg, prev: nil, next: nil}
      list_tail = list_head
    else
      list_second = list_head
      list_head = {value: arg, prev: nil, next: list_second}
      list_second.update({prev: list_head})
    end
  when 'delete'
    current = list_head
    until current.nil? do
      if current[:value] == arg
        if current[:prev].nil? and current[:next].nil?
          # list becomes empty
          list_tail = nil 
          list_head = nil
        elsif current[:prev].nil?
          # delete first element
          list_head = current[:next]
          list_head.update({prev: nil})
        elsif current[:next].nil?
          # delete last element
          list_tail = current[:prev]
          list_tail.update({next: nil})
        else
          current[:prev].update({next: current[:next]})
          current[:next].update({prev: current[:prev]})
        end
        break
      else
        current = current[:next]
      end
    end
  when 'deleteFirst'
    unless list_head.nil?
      if list_head[:next].nil?
        #list becomes empty
        list_head = nil
        list_tail = nil
      else
        list_head = list_head[:next]
        list_head.update({prev: nil})
      end
    end
  when 'deleteLast'
    unless list_tail.nil?
      if list_tail[:prev].nil?
        #list becomes empty
        list_head = nil
        list_tail = nil
      else
        list_tail = list_tail[:prev]
        list_tail.update({next: nil})
      end
    end
  end
end
current = list_head
until current.nil? do
  print("#{current[:value]}")
  current = current[:next]
  print(" ") unless current.nil?
end
print("\n")