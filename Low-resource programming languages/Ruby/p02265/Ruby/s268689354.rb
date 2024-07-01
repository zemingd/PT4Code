n = gets.to_i
list = []

n.times do
  cmd, num = gets.split
  case cmd
  when "insert"
    list.push(num.to_i)
  when "delete"
    index = list.find_index { |i| i == num.to_i}
    list.delete_at(index) 
  when "deleteLast"
    list.shift
  when "deleteFirst"
    list.pop
  end 
end

puts list.reverse!.join(" ")