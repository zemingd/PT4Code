n=gets.to_i
ary=gets.split.map(&:to_i)
(1..n).each{|i|puts ary.include?(i) ? ary.count(i) : 0}