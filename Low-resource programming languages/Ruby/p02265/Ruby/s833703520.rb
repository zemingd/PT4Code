n = gets.to_i
list = []
n.times do
  cmd = gets.split
  case cmd[0]
  when "insert" then
    list.unshift cmd[1].to_i
  when "delete" then
    if i = list.index(cmd[1].to_i)
      list[i] = nil
    end
  when "deleteFirst" then
    list[0] = nil
  when "deleteLast" then
    list[-1] = nil
  end
  list.compact!
end

puts list*' '