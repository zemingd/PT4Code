n = gets.to_i
command_list = []
n.times do
  command_list << gets.chomp.split
end
list = []

while command_list.length > 0
  command = command_list.shift
  if command[0] == "insert"
    list << command[1].to_i
  elsif command[0] == "delete"
    x = list.rindex(command[1].to_i)
    list.delete_at(x)
  elsif command[0] == "deleteFirst"
    list.pop
  elsif command[0] == "deleteLast"
    list.shift
  end
end

puts list.reverse.join(" ")