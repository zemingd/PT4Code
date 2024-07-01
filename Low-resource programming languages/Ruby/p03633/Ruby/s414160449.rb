input = readlines()

n = input.shift.chomp.to_i
list = []
input.each do |l|
  list.push(l.chomp.to_i)
end

list2 = []
list.each_with_index do |l1, i1|
  list.each_with_index do |l2, i2|
    next if i1 >= i2
    lcm = l1.lcm(l2)
    list2.push(lcm)
  end
end

puts list2.max
