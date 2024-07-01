n = gets.chomp
orders = gets.chomp.split

count = 0
orders.each_cons(3) do |con|
  target = con[1]
  count += 1 if con.sort[1] == target
end

puts count