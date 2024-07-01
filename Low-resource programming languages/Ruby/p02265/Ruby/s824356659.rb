n = gets.to_i

list = []
n.times{
  command = gets.split
  case command[0]
  when "insert"
    list.unshift(command[1])
  when "delete"
    index = list.find_index(command[1])
    list.delete_at(index) if index
  when "deleteFirst"
    list.shift
  when "deleteLast"
    list.pop
  end
}
puts list.join(" ")