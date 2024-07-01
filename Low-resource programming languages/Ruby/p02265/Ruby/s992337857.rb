n = gets.to_i
box = []
n.times {
  order,num = gets.split(" ")
  num = num.to_i
  case order
  when "insert"
    box.unshift(num)
  when "delete"
    box.delete(num)
  when "deleteFirst"
    box.shift
  when "deleteLast"
    box.pop
end
}

puts box.join(" ")