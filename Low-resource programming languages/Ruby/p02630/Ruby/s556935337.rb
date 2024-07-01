input = readlines()

total = input.shift.to_i

orig = input.shift.chomp.split("\s").map{|x| x.to_i}
input_total = input.shift.to_i

list = {}
total = 0
orig.each do |n|
  list[n] = 0 if list[n].nil?
  list[n] += 1
  total += n
end

input.each do |l|
  v1, v2 = l.chomp.split("\s").map{|x| x.to_i}
  change_num = list[v1].to_i
  diff = (v2 - v1) * change_num
  total += diff
  puts total
  list[v1] = 0
  list[v2] = 0 if list[v2].nil?
  list[v2] += change_num
end
