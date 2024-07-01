item = gets.chomp.split(/\s+/).map{|e| e.to_i}
n = item[0]
k = item[1]

puts n.to_s(k).to_s.size
