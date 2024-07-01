puts STDIN.read.lines.map(&:to_i).zip([-1, 2]).map{ |a,b| a*b}.inject(:+)
