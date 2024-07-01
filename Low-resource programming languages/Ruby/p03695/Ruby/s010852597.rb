gets
xs = gets.split(' ').map(&:to_i).map{ |v| v / 400 }.group_by{|v| v}
ranks = xs.select{|k,v| k < 8}
wc = xs.select{|k,v| k >= 8}.values.flatten

min = ranks.keys.length
min = 1 if min == 0 && wc.length > 0

max = ranks.keys.length
max = [8, [max, max + wc.length].max].min
puts min.to_s + ' ' + max.to_s
