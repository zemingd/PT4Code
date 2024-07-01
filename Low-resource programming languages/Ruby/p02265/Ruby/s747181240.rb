n = gets.chomp.to_i
queue = Array.new
n.times do
  order = gets.split(" ")
  case order[0]
    when "insert"
      queue.unshift(order[1].to_i)
    when "delete" && (queue.index(order[1].to_i) != nil)
      queue.delete_at(queue.index(order[1].to_i))
    when "deleteFirst"
    queue.shift
    when "deleteLast"
    queue.pop
  end
end
(queue.size).times do |num|
  print queue[num]
  num+1 == (queue.size) ? (print "\n") : (print " ")
end