n = gets.chomp
orders = gets.chomp.split

count = 0
orders.each_cons(3) do |con|
  if con[0] < con[1] && con[1] < con[2]
    count += 1
  elsif con[0] > con[1] && con[1] > con[2]
    count += 1
  end
end

puts count