n = gets.to_i
list = []

n.times do 
  command, key = gets.split()
  if command == "insert"
    list.unshift(key)
  elsif command == "delete"
    next if list.index(key) == nil
    list.delete_at(list.index(key))
  elsif command == "deleteFirst"
    list.shift()
  else 
    list.delete_at(list.size - 1)
  end
end

puts list.join(" ")
