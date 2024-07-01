N = gets.to_i
T,A = gets.split.map(&:to_i)
higher = gets.split.map(&:to_i)
temp_near = higher.map{|x| (T - x * 0.006 - A).abs}
point = temp_near.index(temp_near.min)
puts point + 1