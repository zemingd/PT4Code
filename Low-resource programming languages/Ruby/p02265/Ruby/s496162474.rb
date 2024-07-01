n = gets.chomp.to_i
d = 0
a = []
list = []
n.times do |i|
  a[i] = gets.chomp.split(" ")
  a[i][1] = a[i][1].to_i
  if(a[i][0] == "insert")
    list.unshift(a[i][1])
    
  elsif(a[i][0] == "delete")
    list.delete_at(d) if ((d = (list.index(a[i][1]))) != nil)
  elsif(a[i][0] == "deleteFirst")
    list.shift
  elsif(a[i][0] == "deleteLast")
    list.pop
  else
    error += 1
  end
end
list[0,list.size-1].each do |d|
  print("#{d} ")
end
puts list[-1]