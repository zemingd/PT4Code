arr = []
gets.to_i.times do
  s, n = gets.split
  case s
  when "insert"
    arr.unshift n.to_i
  when "delete"
    (i = arr.find_index(n.to_i)) && arr.delete_at(i)
  when "deleteFirst"
    arr.shift
  when "deleteLast"
    arr.pop
  end
end
puts arr.join(' ')

