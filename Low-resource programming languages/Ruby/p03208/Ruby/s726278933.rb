input = readlines()

n, k = input.shift.chomp.split("\s").map{|x| x.to_i}
list = []
input.each do |l|
  list.push(l.chomp.to_i)
end

min = nil
list = list.sort()
list.each_with_index do |l, i|
  next if i < (k - 1)
  diff = (l - list[i - (k - 1)]).abs
  min = diff if min.nil? || min > diff
end

puts min
