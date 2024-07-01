def execute_process(orders) #orders???????¬??????????
  list = []
  length = orders.length
  for i in 0..(length-1)
    if orders[i][0] == "insert"
      list.unshift(orders[i][1].to_i)
    elsif  orders[i][0] == "delete"
      first_order_number = list.index(orders[i][1].to_i)
      if first_order_number == nil
        next
      else
        list.delete_at(first_order_number)
      end
    elsif orders[i][0] == "deleteFirst"
      list.delete_at(0)
    elsif orders[i][0] == "deleteLast"
      list.delete_at(-1)
    else
      puts "error!"
    end
  end
  return list
end


n = gets.chomp.to_i
orders = []
n.times do
  order = gets.chomp.split
  orders.push(order)
end

output = execute_process(orders)
puts output.join(' ')