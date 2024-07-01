n = gets.chomp!.to_i
order_list = []
n.times do
  arr = gets.chomp!.split(' ')
  order_list.push(arr)
end
linked_list = []
order_list.each do |order|
  if order[0] == "insert"
    linked_list.unshift(order[1])
  elsif order[0] == "delete"
    linked_list.each_with_index do |v, i|
      if(v == order[1])
        linked_list.delete_at(i)
        break
      end
    end
  elsif order[0] == "deleteFirst"
    linked_list.shift
  elsif order[0] == "deleteLast"
    linked_list.pop
  end
end
puts linked_list
