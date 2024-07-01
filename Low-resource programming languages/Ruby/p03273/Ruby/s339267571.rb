h, w = gets.split.map(&:to_i)
f = h.times.map{gets.chomp}
rmv_t = "."*w
f2 = f.delete_if{|s| s==rmv_t}.map(&:chars).transpose
f3 = f2.delete_if{|t| t.all?{|c| c==?.}}.transpose.map(&:join)
puts f3