menus = 5.times.map{gets.to_i}
hitoketa = menus.map{|i| i.to_s[-1].to_i > 0 ? i.to_s[-1].to_i : 10}
idx = hitoketa.find_index(hitoketa.min)
last = menus[idx]
menus.delete_at(idx)

puts menus.map{|i| ((i/10.0).ceil*10).to_i}.inject(:+) + last



