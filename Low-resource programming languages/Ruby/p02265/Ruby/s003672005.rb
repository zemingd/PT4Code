list = []
n = gets.to_i

n.times do
  command = gets.split
  case command[0]
  when "insert"
    num = command[1].to_i
    list.unshift(num)
  when "delete"
    num = command[1].to_i
    index = list.find_index {|val| val == num}
    if index != nil
      list.delete_at(index)
    end
  when "deleteFirst"
    list.shift
  when "deleteLast"
    list.pop
  end
end

puts list.join(" ")

