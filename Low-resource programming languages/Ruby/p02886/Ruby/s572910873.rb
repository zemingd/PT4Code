input = readlines()

n = input.shift.chomp.to_i
list = input.shift.chomp.split("\s").map{|x| x.to_i}

sum = 0
list.each_with_index do |l1, i1|
  list.each_with_index do |l2, i2|
    next if i1 >= i2
    sum += l1 * l2
  end
end

puts sum