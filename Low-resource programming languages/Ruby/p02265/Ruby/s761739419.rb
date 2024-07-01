array = []
gets.to_i.times do
    command = gets.chomp.split(" ")
    if command[0] == "insert"
        array.unshift(command[1])
    elsif command[0] == "delete" && array.find_index(command[1])
        array.delete_at(array.find_index(command[1]))
    elsif command[0] == "deleteFirst"
        array.shift
    elsif command[0] == "deleteLast"
        array.pop
    end
end
puts array.join(" ")
