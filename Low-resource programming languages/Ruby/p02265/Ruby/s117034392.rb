n = gets.to_i
list = []

n.times do
  cmd, num = gets.split
  list.push(num) if cmd == "insert"
  list.delete(num) if cmd == "delete"
end

puts list.reverse!.join(" ")