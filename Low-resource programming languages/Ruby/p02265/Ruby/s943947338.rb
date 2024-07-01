array = Array.new

gets.to_i.times do
  input = gets.split

  if(input[0] == "insert")
    array.unshift(input[1])
  elsif(input[0] == "delete" && (index = array.index(input[1])) != nil)
      array.delete_at(index)
  elsif(input[0] == "deleteFirst")
    array.shift
  elsif(input[0] == "deleteLast")
    array.pop
  end
end

puts array.join(" ")

