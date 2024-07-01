input = readlines()

n = input.shift.chomp.to_i
list = []
input.each do |l|
  list.push(l.chomp.to_i)
end

if n == 1
  puts list[0]
  exit()
end

list2 = []
list.each_with_index do |l1, i1|
  list.each_with_index do |l2, i2|
    next if i1 >= i2
    lcm = l1.lcm(l2)
    list2.push(lcm)
  end
end

r = list2.max
r = 10**18 if r > 10**18

puts r
