n,m = gets.split.map(&:to_i)

p (1..n).map {gets.split.map(&:to_i)[1..-1]}.inject {|x,y| x&y}.size