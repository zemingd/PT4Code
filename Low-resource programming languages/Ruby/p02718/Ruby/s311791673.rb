input = readlines()

n, m = input.shift.chomp.split("\s").map{|x| x.to_i}
list = input.shift.chomp.split("\s").map{|x| x.to_i}

total = list.sum
selected = []
list.each do |l|
  selected.push(l) if l >= total / 4 * m
end

puts selected.length >= m ? 'Yes' : 'No'