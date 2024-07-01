n = gets.to_i
d = gets.split.map(&:to_i)
cnt = 0
(1..(d.length-2)).each {|i| cnt+=1 if d[i] > d[i-1] && d[i] < d[i+1] or d[i] < d[i-1] && d[i] > d[i+1]}
p cnt