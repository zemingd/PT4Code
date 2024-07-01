n = gets.to_i
list = []
n.times{
  order,x = gets.split(" ")

  x = x.to_i
  case order
  when "insert"
    list.unshift(x)
  when "delete"
    list.delete(list[list.index(x)])
  when "deleteFirst"
    list.shift
    list
  when "deleteLast"
    list.pop
  	list
  end
}

for i in 0..list.size-1
    if li[i] == list[i-1]
         puts "#{list[i]} #{list[i]}"
    else
         puts list[i]
    end
end