N = gets.to_i
T, A = gets.split.map(&:to_i)

H = gets.split.map(&:to_i)

Diff_C = H.map{ |h| (T - (T - h*0.006)).abs }

Min_diff = Diff_C.min

p Diff_C.index(Min_diff) + 1
