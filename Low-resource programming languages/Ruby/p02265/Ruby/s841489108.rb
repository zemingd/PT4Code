n = gets.chomp.to_i
doubleLinkedList = Array.new
n.times do
  command = gets.chomp
  if command == "deleteFirst" then
    doubleLinkedList.shift
  elsif command == "deleteLast" then
    doubleLinkedList.pop
  else
    command, x = command.split
    x = x.to_i
    if command == "insert" then
      doubleLinkedList.unshift(x)
    elsif command == "delete" then
      doubleLinkedList.delete(x)
    end
  end
end
puts doubleLinkedList.join(" ")