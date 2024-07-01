array = []

n = gets.chomp.to_i
n.times {
    s, x = gets.chomp.split()
    case s
    when "insert"
        array.unshift(x.to_i)
    when "delete"
        array.delete_at(array.find_index(x.to_i))
    when "deleteFirst"
        array.shift
    when "deleteLast"
        array.pop
    end
}

puts array.join(" ")
