N = gets.to_i
T, A = gets.split.map(&:to_i)
Hs = gets.split.map{|h| (A - (T - h.to_i * 0.006)).abs }

min = Hs.min
puts Hs.find_index(min) + 1