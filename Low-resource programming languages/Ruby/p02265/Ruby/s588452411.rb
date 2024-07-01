command_num = STDIN.gets.to_i
commands = STDIN.read.split("\n")

list_head = nil
list_tail = nil

commands.each do |command|
  func, arg =command.split(' ')
  case func
  when 'insert'
    if list_head.nil?
      list_head = {value: arg, prev: nil, next: nil}
      list_tail = list_head
    else
      list_second = list_head
      list_head = {value: arg, prev: nil, next: list_second}
      list_second.update({prev: list_head})
    end
  when 'delete'
    current = list_head
    until current[:next].nil? do
      if current[:value] == arg
        current[:prev].update({next: current[:next]})
        break
      else
        current = current[:next]
      end
    end
  when 'deleteFirst'
    list_head = list_head[:next]
    list_head.update({prev: nil})
  when 'deleteLast'
    list_tail = list_tail[:prev]
    list_tail.update({next: nil})
  end
end
      
current = list_head
until current[:next].nil? do
  print("#{current[:value]} ")
  current = current[:next]
end