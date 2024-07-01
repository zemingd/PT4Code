n = gets.to_i
list = []
n.times{
  command =gets.split(" ")
  case command[0]
  when "insert"
    num = command[1].to_i
    list.unshift(num)
  when "delete"
    num = command[1].to_i
    index = list.index(num)
    if index != nil
      list.delete_at(index)
    end
  when "deleteFirst"
    list.shift
  when "deleteLast"
    list.pop
  end
}

puts list.join(" ")