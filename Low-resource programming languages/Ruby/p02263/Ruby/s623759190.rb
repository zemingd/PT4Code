stack = []
arr = gets.split(" ").map{|i| /\d+/ =~ i ? i.to_i: i.to_sym}
for i in 0...arr.length
  if Integer === arr[i]
    stack.push(arr[i])
  else
    a, b = stack.pop(2)
    stack.push(a.send(arr[i], b))
  end
end
puts stack