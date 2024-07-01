gets
p = gets.chomp.split(" ").map(&:to_i)

puts (p.length-2).times.select{|i|a = [p[i], p[i+2]]; b = p[i+1]; a.max > b && a.min < b}.length
