input = readlines()

n, m = input.shift.chomp.split("\s").map{|x| x.to_i}
list = input.shift.chomp.split("\s").map{|x| x.to_i}

total = list.sum

selected = []
thres = total.to_f / (4 * m).to_f
list.each do |l|
  selected.push(l) unless l < thres
end

puts selected.length >= m ? 'Yes' : 'No'