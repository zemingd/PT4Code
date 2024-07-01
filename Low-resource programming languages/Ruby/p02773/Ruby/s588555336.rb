n = gets.to_i 
a = n.times.map{gets.chomp.to_s}
ans = []
a = a.uniq.map{|item| [item, a.count(item)]}.to_h
max = a.max{ |x, y| x[1] <=> y[1] }[1]
a.delete_if{|k, v|
  v != max
}
a.each_key {|k| ans << k}
puts ans.sort