num = gets.to_i
t,a = gets.split.map(&:to_f)
talls = gets.split.map(&:to_f)
ave_temp = talls.map{|n| t - n * 0.006}
diff = ave_temp.map{|i| (a.abs - i.abs).abs}

puts diff.index(diff.min) + 1