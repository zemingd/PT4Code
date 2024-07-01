## xメートル地点で T-x*0.005

n = gets.chop.to_i
t, a = gets.chop.split.map(&:to_i)
h = gets.chop.split.map(&:to_i)

ans = 0

h.each_with_index{|height, index|
  
  ans = index if ((t - height * 0.006) - a).abs < ( (t-h[ans] * 0.006) - a ).abs
}


puts ans + 1
