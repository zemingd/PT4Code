N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

ave = H.map {|h| T - h * 0.006}
abs = ave.map{|a| (A-a).abs}
puts abs.index(abs.min) + 1
