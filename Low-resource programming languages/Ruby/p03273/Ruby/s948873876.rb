H, W = gets.chomp.split.map(&:to_i)
a = H.times.map{gets.chomp.chars}

a.reject{|line| line.all?{|i| i == "."}}
2.times{a = a.reject{|line| line.all?{|i| i == "."}}.transpose}
puts a.map(&:join)