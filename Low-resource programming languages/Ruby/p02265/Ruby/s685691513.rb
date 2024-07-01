# 双方向連結リスト | アルゴリズムとデータ構造 | Aizu Online Judge http://is.gd/5CIlit
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
      i = doubleLinkedList.index(x)
      doubleLinkedList.delete_at(i)
    end
  end
end
puts doubleLinkedList.join(" ")