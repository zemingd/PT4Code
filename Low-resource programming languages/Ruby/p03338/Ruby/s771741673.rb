n, s = $stdin.read.split
n = n.to_i
puts (0..n-1).map { |i| (s[0..i].split("") & s[i+1..n-1].split("")).length }.max
