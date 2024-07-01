n = gets(chomp:true).to_i

array = []

n.times do
  order, key = gets.split
  case order
  when "insert"
    array.unshift(key.to_i)

  when "delete"
    k = array.index(key.to_i) && array.delete_at(k)

  when "deleteFirst"
    array.shift

  when "deleteLast"
    array.pop
  end
end

puts array.join(" ")
