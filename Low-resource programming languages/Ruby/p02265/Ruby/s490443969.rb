n = gets.chomp.to_i

list = []
n.times do
  command, x = gets.chomp.split
  case command
  when "insert"
    list.unshift x
  when "delete"
    list.delete_at(list.index(x))
  when "deleteFirst"
    list.shift
  when "deleteLast"
    list.pop
  end
end

(list.size-1).times do |i|
  print "#{list[i] }"
end
print "#{list.last}\n"