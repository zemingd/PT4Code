input = readlines()

n = input.shift.chomp.to_i
list = input.shift.chomp.split("\s").map{|x| x.to_i}

cnt = 0
list.each_with_index do |l, i|
  next if i < 2
  tmp = [list[i - 2], list[i - 1], l].sort()
  cnt += 1 if tmp[1] == list[i - 1]
end

puts cnt