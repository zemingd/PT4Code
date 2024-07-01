# abc103 C
n = gets.to_i
a = gets.split.map(&:to_i)
p a.map{|x|x-1}.inject(:+)
