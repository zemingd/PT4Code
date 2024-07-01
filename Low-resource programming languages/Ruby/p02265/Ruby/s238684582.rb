n = gets.to_i
list = []
n.times do
  cmd = gets.split
  case cmd[0]
  when "insert" then
    list << cmd[1].to_i
  when "delete" then
    if i = list.rindex(cmd[1].to_i)
      list.delete_at(i)
    end
  when "deleteFirst" then
    list.delete_at(-1)
  when "deleteLast" then
    list.delete_at(0)
  end
end

puts list.reverse*' '