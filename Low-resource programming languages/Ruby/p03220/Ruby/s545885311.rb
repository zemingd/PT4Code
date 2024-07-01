N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
puts (1..N).min_by{|x| (A - (T - H[x-1]*0.006)).abs }
