N = gets.to_i
gets.chomp.chars{|i| N.times{i.succ!}; print i[-1]}