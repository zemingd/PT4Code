N, M, *R = $stdin.read.split
ABS = R.map(&:to_i)

ans = (1..N.to_i).map{|c| ABS.count(c)}

ans.each{|a| puts a}