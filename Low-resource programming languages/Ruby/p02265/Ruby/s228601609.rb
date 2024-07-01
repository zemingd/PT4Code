n = gets.to_i
commands = []
n.times {commands << gets.chomp.split}
list = []

commands.each do |co|
  case co[0]
  when "insert"
    list.unshift(co[1])
  when "delete"
    i = list.index(co[1])
    list.delete_at(i) if i
  when "deleteFirst"
    list.shift
  when "deleteLast"
    list.pop
  end
end
puts list.join(" ")

