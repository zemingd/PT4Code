lines = readlines.map(&:strip)

N = lines.shift
A = lines

grouped_a = A.group_by{|x|x}

p grouped_a.map{|h|h[1].count}.reject{|x|x.even?}.count



