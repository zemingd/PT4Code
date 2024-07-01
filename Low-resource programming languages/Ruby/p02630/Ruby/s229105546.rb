input = readlines()

total = input.shift.to_i

orig = input.shift.chomp.split("\s").map{|x| x.to_i}
input_total = input.shift.to_i

input.each do |l|
  v1, v2 = l.chomp.split("\s").map{|x| x.to_i}
  tmp = []
  orig.each do |v|
    tmp.push(v == v1 ? v2 : v)
  end
  puts tmp.sum()
  orig = tmp
end
