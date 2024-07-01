n = gets.to_i
sp = []
n.times{|i| sp << [i+1] + gets.chomp.split}

sp.sort! do |a,b|
    k = a[1] <=> b[1]
    k == 0 ? -a[2].to_i <=> -b[2].to_i : k
end

puts sp.map{|e| e[0]}