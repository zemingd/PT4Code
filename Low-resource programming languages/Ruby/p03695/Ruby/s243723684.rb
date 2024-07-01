gets; As = gets.split.map(&:to_i)

c = As.reject{|a| a >= 3200}.group_by{|a| a / 400}.size
printf "%d %d\n", [c, 1].max, c + As.count{|a| a >= 3200}