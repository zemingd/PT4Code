gets
x=gets.split.map(&:to_i)
puts (0..100).map{|e|x.map{|a|(a-e)**2}.inject(:+)}.min
