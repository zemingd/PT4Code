n = gets.to_i
sp = (1..n).map{ |i| gets.split(" ").push(i) }
i = 0
rankings = sp.sort_by { |x| [x[1].to_i, i += 1]}.reverse.sort_by {|x| [x[0], i += 1] }
print rankings.transpose[2]