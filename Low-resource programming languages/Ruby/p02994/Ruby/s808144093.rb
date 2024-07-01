n, l = gets().chomp.split("\s").map{|x| x.to_i}

list = []
(1..n).each do |i|
  list.push(l + i - 1)
end

min = nil
list.each do |l|
  min = l if min.nil? || l.abs < min.abs
end

puts list.sum() - min