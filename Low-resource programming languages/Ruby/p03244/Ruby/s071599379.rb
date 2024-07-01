n = gets.to_i
v = gets.chomp.split(" ").map(&:to_i)
ve = v.select.with_index {|e,i| i%2==0}
vo = v.select.with_index {|e,i| i%2==1}

ve_mode = ve.uniq.max_by{|x| ve.count(x)}
vo_mode = vo.uniq.max_by{|x| vo.count(x)}

count = ve.count{|x| x != ve_mode} + vo.count{|x| x != vo_mode}

puts (v.uniq.size == 1) ? ve.size : count