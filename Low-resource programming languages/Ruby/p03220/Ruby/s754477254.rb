n = gets.to_i
t, a = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

min = nil
h.each_with_index{|x, i|
    temp = ((t - x * 0.006) - a).abs
    min = [temp, i + 1] if min.nil? || min[0] > temp
}
puts min[1]