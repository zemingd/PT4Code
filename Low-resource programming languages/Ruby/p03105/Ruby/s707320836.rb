aa = gets.split(" ").map(&:to_i)
puts([aa[2],(aa[1]/aa[0]).to_i].min)