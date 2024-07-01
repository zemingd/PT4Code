n = gets.to_i
a = gets.split.map(&:to_i)
puts a.map{|i|i-1}.inject(:+)
